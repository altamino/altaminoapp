.class public Lcom/ss/android/tea/common/applog/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    array-length p1, p0

    .line 22
    .line 23
    if-lez p1, :cond_1

    .line 24
    const/4 p1, 0x0

    .line 25
    .line 26
    aget-object p0, p0, p1

    .line 27
    .line 28
    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 29
    return-object p0

    .line 30
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "com.facebook.auth.login"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/ss/android/tea/common/applog/a0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "com.renren.renren_account_manager"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/ss/android/tea/common/applog/a0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "com.twitter.android.auth.login"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/ss/android/tea/common/applog/a0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "com.sina.weibo.account"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/ss/android/tea/common/applog/a0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "com.tencent.mm.account"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/ss/android/tea/common/applog/a0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
