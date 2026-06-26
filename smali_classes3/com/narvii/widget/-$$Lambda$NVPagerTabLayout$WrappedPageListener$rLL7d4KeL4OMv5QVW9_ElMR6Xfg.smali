.class public final synthetic Lcom/narvii/widget/-$$Lambda$NVPagerTabLayout$WrappedPageListener$rLL7d4KeL4OMv5QVW9_ElMR6Xfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/widget/-$$Lambda$NVPagerTabLayout$WrappedPageListener$rLL7d4KeL4OMv5QVW9_ElMR6Xfg;->f$0:I

    iput p2, p0, Lcom/narvii/widget/-$$Lambda$NVPagerTabLayout$WrappedPageListener$rLL7d4KeL4OMv5QVW9_ElMR6Xfg;->f$1:F

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/narvii/widget/-$$Lambda$NVPagerTabLayout$WrappedPageListener$rLL7d4KeL4OMv5QVW9_ElMR6Xfg;->f$0:I

    iget v1, p0, Lcom/narvii/widget/-$$Lambda$NVPagerTabLayout$WrappedPageListener$rLL7d4KeL4OMv5QVW9_ElMR6Xfg;->f$1:F

    check-cast p1, Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;

    invoke-static {v0, v1, p1}, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->lambda$onPageScrolled$0(IFLcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V

    return-void
.end method
