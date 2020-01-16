module.exports = (sequelize, DataTypes) =>{
    const Attend = sequelize.define('Attned', {
        attendDate:{
            type: DataTypes.DATEONLY,
            allowNull : false,
        },
        attendStart:{
            type: DataTypes.DATE,
            allowNull : false,
            
        },
        attendEnd:{
            type: DataTypes.DATE,
            allowNull : false,
        },
    }, {
        charset : 'utf8mb4', //한글+이모티콘
        collate: 'utf8mb4_general_ci',
    });
    Attend.associate = (db) => {
        db.Attend.belongsToMany(db.User, {through:'AttnedUser'});
    };
    return Attend;
};