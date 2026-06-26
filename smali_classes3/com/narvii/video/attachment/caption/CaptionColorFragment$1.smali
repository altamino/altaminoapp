.class Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;
.super Ljava/lang/Object;
.source "CaptionColorFragment.java"

# interfaces
.implements Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/attachment/caption/CaptionColorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(IZ)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$100(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$200(Lcom/narvii/video/attachment/caption/CaptionColorFragment;IZ)V

    return-void
.end method
