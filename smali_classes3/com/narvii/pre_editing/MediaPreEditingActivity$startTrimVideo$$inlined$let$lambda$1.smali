.class public final Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "MediaPreEditingActivity.kt"

# interfaces
.implements Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/MediaPreEditingActivity;->startTrimVideo(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaPreEditingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaPreEditingActivity.kt\ncom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1\n*L\n1#1,382:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $duration$inlined:J

.field final synthetic $endTimeMs$inlined:J

.field final synthetic $startTimeMS$inlined:J

.field final synthetic this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;JJJ)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    iput-wide p2, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->$startTimeMS$inlined:J

    iput-wide p4, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->$endTimeMs$inlined:J

    iput-wide p6, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->$duration$inlined:J

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$showError(Lcom/narvii/pre_editing/MediaPreEditingActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(F)V
    .locals 5

    .line 258
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getDialog$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Locale.US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x64

    int-to-float v4, v4

    mul-float p1, p1, v4

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    array-length p1, v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v3, "%d"

    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/ProgressDialog;->updateProgress(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    const-string v0, "outputFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getDialog$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 263
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;

    move-result-object v0

    const/16 v1, 0x7b

    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 264
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 265
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;

    move-result-object p1

    iget-wide v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->$duration$inlined:J

    iput-wide v0, p1, Lcom/narvii/model/Media;->duration:J

    .line 266
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 267
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 269
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 270
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-virtual {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->finish()V

    return-void
.end method
