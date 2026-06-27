package com.narvii.account;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;

/* loaded from: classes2.dex */
public class AccountKeychainProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return "text/plain";
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) throws Throwable {
        if (!"/keychain".equals(uri.getPath())) {
            return null;
        }
        AccountKeychain from = AccountKeychain.readFrom(getContext());
        return (from == null && AccountKeychain.inited(getContext())) ? new AccountKeychain(null, null, null) : from;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) throws Throwable {
        update(uri, contentValues, null, null);
        return uri;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return ("/keychain".equals(uri.getPath()) && AccountKeychain.remove(getContext())) ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) throws Throwable {
        AccountKeychain accountKeychainM34clone;
        if ("/keychain".equals(uri.getPath())) {
            String asString = contentValues.getAsString("EMAIL");
            String asString2 = contentValues.getAsString("SECRET");
            AccountKeychain from = AccountKeychain.readFrom(getContext());
            if (from == null || !asString.equals(from.email)) {
                accountKeychainM34clone = new AccountKeychain(null, asString, asString2);
            } else {
                accountKeychainM34clone = from.m34clone();
                accountKeychainM34clone.secret = asString2;
            }
            if (!accountKeychainM34clone.equals(from)) {
                accountKeychainM34clone.writeTo(getContext());
                return 1;
            }
        }
        return 0;
    }
}
