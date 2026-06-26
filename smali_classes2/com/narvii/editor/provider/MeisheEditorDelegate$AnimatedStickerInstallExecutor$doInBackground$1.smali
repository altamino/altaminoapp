.class public final Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;
.super Ljava/lang/Object;
.source "MeisheEditorDelegate.kt"

# interfaces
.implements Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeisheEditorDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeisheEditorDelegate.kt\ncom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1\n*L\n1#1,343:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $cafCreator:Lcom/meishe/cafconvertor/NvCafCreator;

.field final synthetic $success:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;


# direct methods
.method constructor <init>(Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;Lcom/meishe/cafconvertor/NvCafCreator;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishe/cafconvertor/NvCafCreator;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            ")V"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    iput-object p2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;->$cafCreator:Lcom/meishe/cafconvertor/NvCafCreator;

    iput-object p3, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;->$success:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public convertFinished(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 295
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    invoke-static {p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->access$getStickerInfoPack$p(Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;->$cafCreator:Lcom/meishe/cafconvertor/NvCafCreator;

    invoke-virtual {v1}, Lcom/meishe/cafconvertor/NvCafCreator;->getCafDuration()I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 296
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    iget-object p1, p1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    invoke-static {p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->access$getPrefs$p(Lcom/narvii/editor/provider/MeisheEditorDelegate;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    invoke-static {v1}, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->access$getStickerInfoPack$p(Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/video/model/StickerInfoPack;->getPrefsKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    invoke-static {v2}, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->access$getStickerInfoPack$p(Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v2

    iget v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    iget-object p1, p1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    invoke-static {p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->access$installStickerTemplate(Lcom/narvii/editor/provider/MeisheEditorDelegate;)V

    .line 298
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    iget-object p1, p1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    invoke-static {p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->access$getAnimatedStickerTemplateUuid$p(Lcom/narvii/editor/provider/MeisheEditorDelegate;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    invoke-static {v1}, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->access$getStickerInfoPack$p(Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v1

    iput-object p1, v1, Lcom/narvii/video/model/StickerInfoPack;->templateUuid:Ljava/lang/String;

    .line 300
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;->$success:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    invoke-static {p1, v0}, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->access$setConvertResultReturned$p(Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;Z)V

    return-void
.end method
