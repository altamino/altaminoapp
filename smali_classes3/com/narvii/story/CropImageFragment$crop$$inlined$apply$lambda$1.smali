.class public final Lcom/narvii/story/CropImageFragment$crop$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "CropImageFragment.kt"

# interfaces
.implements Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/CropImageFragment;->crop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/CropImageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/CropImageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/CropImageFragment$crop$$inlined$apply$lambda$1;->this$0:Lcom/narvii/story/CropImageFragment;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapCropped(Landroid/net/Uri;IIII)V
    .locals 0

    const-string p2, "resultUri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    new-instance p1, Lcom/narvii/model/Media;

    invoke-direct {p1}, Lcom/narvii/model/Media;-><init>()V

    const/16 p2, 0x64

    .line 168
    iput p2, p1, Lcom/narvii/model/Media;->type:I

    .line 169
    iget-object p2, p0, Lcom/narvii/story/CropImageFragment$crop$$inlined$apply$lambda$1;->this$0:Lcom/narvii/story/CropImageFragment;

    invoke-static {p2}, Lcom/narvii/story/CropImageFragment;->access$getOutputUrl$p(Lcom/narvii/story/CropImageFragment;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 170
    iput p4, p1, Lcom/narvii/model/Media;->width:I

    .line 171
    iput p5, p1, Lcom/narvii/model/Media;->height:I

    .line 172
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 173
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "media"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object p1, p0, Lcom/narvii/story/CropImageFragment$crop$$inlined$apply$lambda$1;->this$0:Lcom/narvii/story/CropImageFragment;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 175
    iget-object p1, p0, Lcom/narvii/story/CropImageFragment$crop$$inlined$apply$lambda$1;->this$0:Lcom/narvii/story/CropImageFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onCropFailure(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/narvii/story/CropImageFragment$crop$$inlined$apply$lambda$1;->this$0:Lcom/narvii/story/CropImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CropImageFragment;->access$showError(Lcom/narvii/story/CropImageFragment;)V

    return-void
.end method
