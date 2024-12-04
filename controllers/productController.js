const { sequelize, User, Product } = require("../models");

exports.readAllProduct = async (req, res) => {
    try {
        const productQuery = `
            SELECT id, item_name, quantity, price
            FROM Products
        `;

        const products = await sequelize.query(productQuery, {
            type: sequelize.QueryTypes.SELECT,
        });
        const response = products.map(product => ({
            id: product.id,
            item_name: product.item_name,
            quantity: product.quantity,
            price: product.price,
        }));

        res.json(response);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.createProduct = async (req, res) => {
    try {
        const { item_name, quantity, price } = req.body;
        
        await Product.create({
            item_name,
            quantity,
            price
        });

        res.status(201).json({ message: 'Products created successfully' });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.updateProduct = async (req, res) => {
    const { id } = req.params; 
    const { item_name, quantity, price} = req.body;

    try {
        const product = await Product.findByPk(id);

        if (!product) {
            return res.status(404).json({ error: 'Product not found' });
        }

        product.item_name = item_name || product.item_name;
        product.quantity = quantity || product.quantity;
        product.price = price || product.price;

        await product.save();

        res.status(200).json({ message: 'Product updated successfully'});
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.deleteProduct = async (req, res) => {
    const { id } = req.params; 
    try {
        const product = await Product.findByPk(id);

        if (!product) {
            return res.status(404).json({ error: 'Product not found' });
        }
        await product.destroy();

        res.status(200).json({ message: 'Products deleted successfully' });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};
