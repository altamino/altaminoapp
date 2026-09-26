.class public Lcom/codemonkeylabs/fpslibrary/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a()Lcom/codemonkeylabs/fpslibrary/i;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/i;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/codemonkeylabs/fpslibrary/i;-><init>()V

    .line 6
    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/codemonkeylabs/fpslibrary/i;->b(Landroid/content/Context;)V

    .line 8
    return-void
.end method
