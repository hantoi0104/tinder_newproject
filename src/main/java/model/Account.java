package model;

import com.mysql.cj.x.protobuf.MysqlxDatatypes;

public class Account {
    private MysqlxDatatypes.Scalar.String useName;
    private MysqlxDatatypes.Scalar.String passWord;
    private MysqlxDatatypes.Scalar.String mail;

    public Account(MysqlxDatatypes.Scalar.String useName, MysqlxDatatypes.Scalar.String passWord, MysqlxDatatypes.Scalar.String mail) {
        this.useName = useName;
        this.passWord = passWord;
        this.mail = mail;
    }

    public MysqlxDatatypes.Scalar.String getUseName() {
        return useName;
    }

    public void setUseName(MysqlxDatatypes.Scalar.String useName) {
        this.useName = useName;
    }

    public MysqlxDatatypes.Scalar.String getPassWord() {
        return passWord;
    }

    public void setPassWord(MysqlxDatatypes.Scalar.String passWord) {
        this.passWord = passWord;
    }

    public MysqlxDatatypes.Scalar.String getMail() {
        return mail;
    }

    public void setMail(MysqlxDatatypes.Scalar.String mail) {
        this.mail = mail;
    }
}
