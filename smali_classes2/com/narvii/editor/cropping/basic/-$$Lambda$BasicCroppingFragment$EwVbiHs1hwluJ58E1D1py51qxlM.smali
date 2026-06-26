.class public final synthetic Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$EwVbiHs1hwluJ58E1D1py51qxlM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$EwVbiHs1hwluJ58E1D1py51qxlM;->f$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    iput-wide p2, p0, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$EwVbiHs1hwluJ58E1D1py51qxlM;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$EwVbiHs1hwluJ58E1D1py51qxlM;->f$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    iget-wide v1, p0, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$EwVbiHs1hwluJ58E1D1py51qxlM;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->lambda$onStopTrackingTouch$6$BasicCroppingFragment(J)V

    return-void
.end method
