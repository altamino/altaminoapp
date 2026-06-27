package com.narvii.account;

import android.content.Context;
import android.database.AbstractCursor;
import android.text.TextUtils;
import com.narvii.util.Log;
import com.narvii.util.NativeHelper;
import com.narvii.util.Utils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class AccountKeychain extends AbstractCursor implements Cloneable {
    static final String EMAIL = "EMAIL";
    static final String SECRET = "SECRET";
    public String email;
    public String secret;
    public String uid;

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String[] getColumnNames() {
        return new String[]{EMAIL, SECRET};
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getCount() {
        return 1;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public double getDouble(int i) {
        return 0.0d;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public float getFloat(int i) {
        return 0.0f;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getInt(int i) {
        return 0;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public long getLong(int i) {
        return 0L;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public short getShort(int i) {
        return (short) 0;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public boolean isNull(int i) {
        return false;
    }

    public AccountKeychain(String str, String str2, String str3) {
        this.uid = str;
        this.email = str2;
        this.secret = str3;
    }

    public static boolean inited(Context context) {
        return new File(context.getFilesDir(), "keychain").isDirectory();
    }

    public static AccountKeychain readFrom(Context context) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        File file = new File(new File(context.getFilesDir(), "keychain"), "k0");
        FileInputStream fileInputStream3 = null;
        if (file.length() > 0) {
            try {
                fileInputStream2 = new FileInputStream(file);
            } catch (Exception e) {
                e = e;
                fileInputStream = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                byte[] bArr = new byte[fileInputStream2.available()];
                fileInputStream2.read(bArr);
                fileInputStream2.close();
                String strBd = NativeHelper.Bd(bArr);
                int iIndexOf = strBd.indexOf(10);
                if (iIndexOf < 0) {
                    Utils.safeClose((InputStream) null);
                    return null;
                }
                String strSubstring = strBd.substring(0, iIndexOf);
                int i = iIndexOf + 1;
                int iIndexOf2 = strBd.indexOf(10, i);
                if (iIndexOf2 < 0) {
                    Utils.safeClose((InputStream) null);
                    return null;
                }
                String strSubstring2 = strBd.substring(i, iIndexOf2);
                int i2 = iIndexOf2 + 1;
                int iIndexOf3 = strBd.indexOf(10, i2);
                if (iIndexOf3 < 0) {
                    iIndexOf3 = strBd.length();
                }
                String strSubstring3 = strBd.substring(i2, iIndexOf3);
                if (strSubstring.length() == 0) {
                    strSubstring = null;
                }
                strSubstring2.charAt(0);
                strSubstring3.charAt(0);
                AccountKeychain accountKeychain = new AccountKeychain(strSubstring, strSubstring2, strSubstring3);
                Utils.safeClose((InputStream) null);
                return accountKeychain;
            } catch (Exception e2) {
                fileInputStream = fileInputStream2;
                e = e2;
                try {
                    Log.e("fail to read account keychain from " + file, e);
                    Utils.safeClose(fileInputStream);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream3 = fileInputStream;
                    Utils.safeClose(fileInputStream3);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fileInputStream3 = fileInputStream2;
                Utils.safeClose(fileInputStream3);
                throw th;
            }
        }
        return null;
    }

    public void writeTo(Context context) throws Throwable {
        File file;
        FileOutputStream fileOutputStream;
        if (TextUtils.isEmpty(this.email) || TextUtils.isEmpty(this.secret)) {
            remove(context);
            return;
        }
        File file2 = new File(context.getFilesDir(), "keychain");
        file2.mkdir();
        File file3 = new File(file2, "k0");
        StringBuilder sb = new StringBuilder();
        String str = this.uid;
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append('\n');
        sb.append(this.email);
        sb.append('\n');
        sb.append(this.secret);
        sb.append('\n');
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                file = new File(file2, System.currentTimeMillis() + ".tmp");
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            fileOutputStream.write(NativeHelper.Be(sb.toString()));
            fileOutputStream.close();
            if (!file.renameTo(file3)) {
                file.delete();
                Log.e("fail to remove account keychain from " + file + " to " + file3);
            }
        } catch (Exception e2) {
            fileOutputStream2 = fileOutputStream;
            e = e2;
            Log.e("fail to write account keychain to " + file3, e);
            Utils.safeClose(fileOutputStream2);
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            Utils.safeClose(fileOutputStream2);
            throw th;
        }
        Utils.safeClose(fileOutputStream2);
    }

    public static boolean remove(Context context) {
        File file = new File(context.getFilesDir(), "keychain");
        file.mkdir();
        return new File(file, "k0").delete();
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AccountKeychain m34clone() {
        return new AccountKeychain(this.uid, this.email, this.secret);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj.hashCode() != hashCode() || !(obj instanceof AccountKeychain)) {
            return false;
        }
        AccountKeychain accountKeychain = (AccountKeychain) obj;
        return Utils.isEquals(accountKeychain.uid, this.uid) && Utils.isEquals(accountKeychain.email, this.email) && Utils.isEquals(accountKeychain.secret, this.secret);
    }

    public int hashCode() {
        String str = this.uid;
        int iHashCode = str != null ? 625645775 ^ str.hashCode() : 625645775;
        String str2 = this.email;
        if (str2 != null) {
            iHashCode ^= str2.hashCode();
        }
        String str3 = this.secret;
        return str3 != null ? iHashCode ^ str3.hashCode() : iHashCode;
    }

    public String toString() {
        return '[' + this.uid + ',' + this.email + ',' + this.secret + ']';
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String getString(int i) {
        if (i == 0) {
            return this.email;
        }
        if (i == 1) {
            return this.secret;
        }
        return null;
    }
}
