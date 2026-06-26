.class public Lcom/codemonkeylabs/fpslibrary/TinyDancer;
.super Ljava/lang/Object;
.source "TinyDancer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;
    .locals 1

    .line 11
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;

    invoke-direct {v0}, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;-><init>()V

    return-object v0
.end method

.method public static hide(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->hide(Landroid/content/Context;)V

    return-void
.end method
