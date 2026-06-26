.class final Lcom/narvii/story/CoverImageFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "CoverImageFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/CoverImageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/CoverImageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/CoverImageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 195
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$getCustomThumbUrl$p(Lcom/narvii/story/CoverImageFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$toPickCoverImage(Lcom/narvii/story/CoverImageFragment;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$getCustomSelect$p(Lcom/narvii/story/CoverImageFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 197
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$getCoverImageInfo$p(Lcom/narvii/story/CoverImageFragment;)Lcom/narvii/scene/model/SceneCoverImageInfo;

    move-result-object p1

    iget p1, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 199
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$getCustomThumbUrl$p(Lcom/narvii/story/CoverImageFragment;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2d0

    const/16 v1, 0x500

    const-string v2, "story-cover"

    invoke-static {p1, v2, v0, v1}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object v0, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;->this$0:Lcom/narvii/story/CoverImageFragment;

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/narvii/story/CoverImageFragment;->access$startCrop(Lcom/narvii/story/CoverImageFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$getCustomThumbUrl$p(Lcom/narvii/story/CoverImageFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/story/CoverImageFragment;->access$startCrop(Lcom/narvii/story/CoverImageFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$getCustomSelect$p(Lcom/narvii/story/CoverImageFragment;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 207
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$getCoverImageInfo$p(Lcom/narvii/story/CoverImageFragment;)Lcom/narvii/scene/model/SceneCoverImageInfo;

    move-result-object p1

    const/4 v0, 0x2

    iput v0, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    .line 208
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;->this$0:Lcom/narvii/story/CoverImageFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/story/CoverImageFragment;->access$setCustomSelect$p(Lcom/narvii/story/CoverImageFragment;Z)V

    .line 209
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$getCustomThumbUrl$p(Lcom/narvii/story/CoverImageFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/story/CoverImageFragment;->access$setPreviewContent(Lcom/narvii/story/CoverImageFragment;Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$updateCustomTabState(Lcom/narvii/story/CoverImageFragment;)V

    :cond_3
    :goto_0
    return-void
.end method
