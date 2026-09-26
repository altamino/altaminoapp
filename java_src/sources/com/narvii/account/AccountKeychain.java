package com.narvii.account;

import android.content.Context;
import android.database.AbstractCursor;
import android.text.TextUtils;
import c.f.b.e.q5;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public class AccountKeychain extends AbstractCursor implements Cloneable {
    static final String EMAIL = "EMAIL";
    static final String SECRET = "SECRET";
    public String email;
    public String secret;
    public String uid;

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

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String[] getColumnNames() {
        return new String[]{EMAIL, SECRET};
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getCount() {
        return 1;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public double getDouble(int i10) {
        return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public float getFloat(int i10) {
        return 0.0f;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getInt(int i10) {
        return 0;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public long getLong(int i10) {
        return 0L;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public short getShort(int i10) {
        return (short) 0;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String getString(int i10) {
        if (i10 == 0) {
            return this.email;
        }
        if (i10 == 1) {
            return this.secret;
        }
        return null;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public boolean isNull(int i10) {
        return false;
    }

    public static boolean inited(Context context) {
        return new File(context.getFilesDir(), "keychain").isDirectory();
    }

    public static AccountKeychain readFrom(Context context) throws Throwable {
        FileInputStream fileInputStream;
        File file = new File(new File(context.getFilesDir(), "keychain"), "k0");
        FileInputStream fileInputStream2 = null;
        if (file.length() > 0) {
            try {
                FileInputStream fileInputStream3 = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[fileInputStream3.available()];
                    fileInputStream3.read(bArr);
                    fileInputStream3.close();
                    String strB = q5.b(bArr);
                    int iIndexOf = strB.indexOf(10);
                    if (iIndexOf < 0) {
                        Utils.safeClose((InputStream) null);
                        return null;
                    }
                    String strSubstring = strB.substring(0, iIndexOf);
                    int i10 = iIndexOf + 1;
                    int iIndexOf2 = strB.indexOf(10, i10);
                    if (iIndexOf2 < 0) {
                        Utils.safeClose((InputStream) null);
                        return null;
                    }
                    String strSubstring2 = strB.substring(i10, iIndexOf2);
                    int i11 = iIndexOf2 + 1;
                    int iIndexOf3 = strB.indexOf(10, i11);
                    if (iIndexOf3 < 0) {
                        iIndexOf3 = strB.length();
                    }
                    String strSubstring3 = strB.substring(i11, iIndexOf3);
                    if (strSubstring.length() == 0) {
                        strSubstring = null;
                    }
                    strSubstring2.charAt(0);
                    strSubstring3.charAt(0);
                    AccountKeychain accountKeychain = new AccountKeychain(strSubstring, strSubstring2, strSubstring3);
                    Utils.safeClose((InputStream) null);
                    return accountKeychain;
                } catch (Exception e) {
                    fileInputStream = fileInputStream3;
                    e = e;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream3;
                    Utils.safeClose(fileInputStream2);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                Log.e("fail to read account keychain from " + file, e);
                Utils.safeClose(fileInputStream);
            } catch (Throwable th3) {
                th = th3;
                fileInputStream2 = fileInputStream;
                Utils.safeClose(fileInputStream2);
                throw th;
            }
        }
        return null;
    }

    public static boolean remove(Context context) {
        File file = new File(context.getFilesDir(), "keychain");
        file.mkdir();
        return new File(file, "k0").delete();
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AccountKeychain m42clone() {
        return new AccountKeychain(this.uid, this.email, this.secret);
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
        return kotlinx.serialization.json.internal.b.BEGIN_LIST + this.uid + kotlinx.serialization.json.internal.b.COMMA + this.email + kotlinx.serialization.json.internal.b.COMMA + this.secret + kotlinx.serialization.json.internal.b.END_LIST;
    }

    public void writeTo(Context context) throws Throwable {
        if (TextUtils.isEmpty(this.email) || TextUtils.isEmpty(this.secret)) {
            remove(context);
            return;
        }
        File file = new File(context.getFilesDir(), "keychain");
        file.mkdir();
        File file2 = new File(file, "k0");
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
        FileOutputStream fileOutputStream = null;
        try {
            try {
                File file3 = new File(file, System.currentTimeMillis() + ".tmp");
                FileOutputStream fileOutputStream2 = new FileOutputStream(file3);
                try {
                    fileOutputStream2.write(q5.c(sb.toString()));
                    fileOutputStream2.close();
                    if (!file3.renameTo(file2)) {
                        file3.delete();
                        Log.e("fail to remove account keychain from " + file3 + " to " + file2);
                    }
                } catch (Exception e) {
                    fileOutputStream = fileOutputStream2;
                    e = e;
                    Log.e("fail to write account keychain to " + file2, e);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    Utils.safeClose(fileOutputStream);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
            Utils.safeClose(fileOutputStream);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public AccountKeychain(String str, String str2, String str3) {
        this.uid = str;
        this.email = str2;
        this.secret = str3;
    }
}
