.class public final synthetic Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;->f$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/-$$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw;->f$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosition()V

    return-void
.end method
