.class public final synthetic Lcom/narvii/util/-$$Lambda$MN6BLuYMEetWn3XvQTBltk0CZks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/util/ToolTipHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/ToolTipHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/-$$Lambda$MN6BLuYMEetWn3XvQTBltk0CZks;->f$0:Lcom/narvii/util/ToolTipHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/-$$Lambda$MN6BLuYMEetWn3XvQTBltk0CZks;->f$0:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    return-void
.end method
