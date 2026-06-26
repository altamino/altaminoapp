.class public Lcom/narvii/account/AccountKeychainProvider;
.super Landroid/content/ContentProvider;
.source "AccountKeychainProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 42
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/keychain"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/account/AccountKeychain;->remove(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p1, "text/plain"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/narvii/account/AccountKeychainProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/keychain"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/account/AccountKeychain;->readFrom(Landroid/content/Context;)Lcom/narvii/account/AccountKeychain;

    move-result-object p1

    if-nez p1, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/narvii/account/AccountKeychain;->inited(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 22
    new-instance p1, Lcom/narvii/account/AccountKeychain;

    invoke-direct {p1, p2, p2, p2}, Lcom/narvii/account/AccountKeychain;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1

    :cond_1
    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p3, "/keychain"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    const-string p1, "EMAIL"

    .line 54
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "SECRET"

    .line 55
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/narvii/account/AccountKeychain;->readFrom(Landroid/content/Context;)Lcom/narvii/account/AccountKeychain;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 59
    new-instance v1, Lcom/narvii/account/AccountKeychain;

    invoke-direct {v1, v0, p1, p2}, Lcom/narvii/account/AccountKeychain;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v1, p4, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    new-instance v1, Lcom/narvii/account/AccountKeychain;

    invoke-direct {v1, v0, p1, p2}, Lcom/narvii/account/AccountKeychain;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p4}, Lcom/narvii/account/AccountKeychain;->clone()Lcom/narvii/account/AccountKeychain;

    move-result-object v1

    .line 65
    iput-object p2, v1, Lcom/narvii/account/AccountKeychain;->secret:Ljava/lang/String;

    .line 67
    :goto_0
    invoke-virtual {v1, p4}, Lcom/narvii/account/AccountKeychain;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 68
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/account/AccountKeychain;->writeTo(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return p3
.end method
