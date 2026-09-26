.class Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onColorSelected(IZ)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$100(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1, p2}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$200(Lcom/narvii/video/attachment/caption/CaptionColorFragment;IZ)V

    .line 18
    return-void
.end method
