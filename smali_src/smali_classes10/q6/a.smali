.class public Lq6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/c;


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lq6/a;->a:Landroid/content/Context;

    .line 10
    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lq6/a;->b:[Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    array-length v1, v0

    .line 6
    .line 7
    if-lez v1, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lq6/a;->a:Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lr6/a;->a(Landroid/content/Context;)[Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    new-array v0, v0, [Ljava/lang/String;

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    :goto_0
    sput-object v0, Lq6/a;->b:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object v0

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method
