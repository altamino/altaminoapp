.class public final synthetic Lcom/narvii/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(IF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/widget/j;->a:I

    iput p2, p0, Lcom/narvii/widget/j;->b:F

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/narvii/widget/j;->a:I

    iget v1, p0, Lcom/narvii/widget/j;->b:F

    check-cast p1, Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;

    invoke-static {v0, v1, p1}, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->a(IFLcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V

    return-void
.end method
