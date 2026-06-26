.class public Lcom/meishe/cafconvertor/webpcoder/WebpImageView;
.super Landroid/support/v7/widget/AppCompatImageView;

# interfaces
.implements Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishe/cafconvertor/webpcoder/WebpImageView$OnWebpFrameCallback;,
        Lcom/meishe/cafconvertor/webpcoder/WebpImageView$CheckingProvider;
    }
.end annotation


# instance fields
.field private a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

.field private b:Lcom/meishe/cafconvertor/webpcoder/WebpImageView$CheckingProvider;

.field private c:Lcom/meishe/cafconvertor/webpcoder/WebpImageView$OnWebpFrameCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/meishe/cafconvertor/webpcoder/WebpImageView$CheckingProvider;

    invoke-direct {p1}, Lcom/meishe/cafconvertor/webpcoder/WebpImageView$CheckingProvider;-><init>()V

    iput-object p1, p0, Lcom/meishe/cafconvertor/webpcoder/WebpImageView;->b:Lcom/meishe/cafconvertor/webpcoder/WebpImageView$CheckingProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/meishe/cafconvertor/webpcoder/WebpImageView$CheckingProvider;

    invoke-direct {p1}, Lcom/meishe/cafconvertor/webpcoder/WebpImageView$CheckingProvider;-><init>()V

    iput-object p1, p0, Lcom/meishe/cafconvertor/webpcoder/WebpImageView;->b:Lcom/meishe/cafconvertor/webpcoder/WebpImageView$CheckingProvider;

    return-void
.end method


# virtual methods
.method public callback(ILandroid/graphics/Bitmap;J)V
    .locals 1

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/WebpImageView;->c:Lcom/meishe/cafconvertor/webpcoder/WebpImageView$OnWebpFrameCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/meishe/cafconvertor/webpcoder/WebpImageView$OnWebpFrameCallback;->webpFrameCallback(ILandroid/graphics/Bitmap;J)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/WebpImageView;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/WebpImageView;->b:Lcom/meishe/cafconvertor/webpcoder/WebpImageView$CheckingProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/webpcoder/WebpImageView$CheckingProvider;->empty()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/WebpImageView;->b:Lcom/meishe/cafconvertor/webpcoder/WebpImageView$CheckingProvider;

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/WebpImageView;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setOnWebpFrameCallback(Lcom/meishe/cafconvertor/webpcoder/WebpImageView$OnWebpFrameCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meishe/cafconvertor/webpcoder/WebpImageView;->c:Lcom/meishe/cafconvertor/webpcoder/WebpImageView$OnWebpFrameCallback;

    return-void
.end method
