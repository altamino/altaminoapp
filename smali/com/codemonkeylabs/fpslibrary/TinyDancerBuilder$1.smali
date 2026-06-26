.class final Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder$1;
.super Ljava/lang/Object;
.source "TinyDancerBuilder.java"

# interfaces
.implements Lcom/codemonkeylabs/fpslibrary/Foreground$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBecameBackground()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->access$000()Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->hide(Z)V

    return-void
.end method

.method public onBecameForeground()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->access$000()Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->show()V

    return-void
.end method
