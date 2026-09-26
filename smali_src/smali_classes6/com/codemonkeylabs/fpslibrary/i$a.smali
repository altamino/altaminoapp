.class final Lcom/codemonkeylabs/fpslibrary/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/codemonkeylabs/fpslibrary/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemonkeylabs/fpslibrary/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/codemonkeylabs/fpslibrary/i;->a()Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/codemonkeylabs/fpslibrary/ui/c;->e(Z)V

    .line 9
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/codemonkeylabs/fpslibrary/i;->a()Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/codemonkeylabs/fpslibrary/ui/c;->f()V

    .line 8
    return-void
.end method
