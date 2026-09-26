.class Landroidx/browser/trusted/PackageIdentityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/trusted/PackageIdentityUtils$SignaturesCompat;,
        Landroidx/browser/trusted/PackageIdentityUtils$Api28Implementation;,
        Landroidx/browser/trusted/PackageIdentityUtils$Pre28Implementation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageIdentity"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static a(Landroid/content/pm/Signature;)[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    :try_start_0
    const-string v0, "SHA256"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method private static b()Landroidx/browser/trusted/PackageIdentityUtils$SignaturesCompat;
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/browser/trusted/PackageIdentityUtils$Api28Implementation;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/browser/trusted/PackageIdentityUtils$Api28Implementation;-><init>()V

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroidx/browser/trusted/PackageIdentityUtils$Pre28Implementation;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/browser/trusted/PackageIdentityUtils$Pre28Implementation;-><init>()V

    .line 18
    return-object v0
.end method

.method static c(Ljava/lang/String;Landroid/content/pm/PackageManager;Landroidx/browser/trusted/TokenContents;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Landroidx/browser/trusted/PackageIdentityUtils;->b()Landroidx/browser/trusted/PackageIdentityUtils$SignaturesCompat;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0, p1, p2}, Landroidx/browser/trusted/PackageIdentityUtils$SignaturesCompat;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;Landroidx/browser/trusted/TokenContents;)Z

    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :catch_1
    move-exception p0

    .line 13
    .line 14
    :goto_0
    const-string p1, "PackageIdentity"

    .line 15
    .line 16
    const-string p2, "Could not check if package matches token."

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    const/4 p0, 0x0

    .line 21
    return p0
.end method
