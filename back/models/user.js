module.exports = (sequelize, DataTypes) =>{
    const User = sequelize.define('User', { //User 테이블명 대문자 -> users로 바뀜
        nickname : {
            type: DataTypes.STRING(20),
            allowNull : false, //필수 true면 선택
        },
        UserId:{
            type: DataTypes.STRING(20),
            allowNull: false,
            unique: true, //고유한 값
        },
        password:{
            type: DataTypes.STRING(100),
            allowNull: false
        },
    }, {
        charset: 'utf8',   //한글저장
        collate: 'utf8-_general_ci'   //한글이 저장되게 하는 부분
     });

     User.associate = (db) =>{
        db.User.belongsToMany(db.Attend, {through:'AttnedUser', as: 'AttendDate'});
     };

     return User;
};