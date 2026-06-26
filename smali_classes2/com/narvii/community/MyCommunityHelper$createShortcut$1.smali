.class public final Lcom/narvii/community/MyCommunityHelper$createShortcut$1;
.super Ljava/lang/Object;
.source "MyCommunityHelper.kt"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/MyCommunityHelper;->createShortcut(Lcom/narvii/model/Community;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $c:Lcom/narvii/model/Community;

.field final synthetic $dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic this$0:Lcom/narvii/community/MyCommunityHelper;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Community;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/dialog/ProgressDialog;",
            "Lcom/narvii/model/Community;",
            ")V"
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    iput-object p2, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p3, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->$c:Lcom/narvii/model/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    const-string/jumbo v0, "volleyError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 304
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    invoke-static {p1}, Lcom/narvii/community/MyCommunityHelper;->access$getContext(Lcom/narvii/community/MyCommunityHelper;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f02c5

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 305
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->$c:Lcom/narvii/model/Community;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/community/MyCommunityHelper;->access$createShortcut(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    const-string p2, "imageContainer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 297
    iget-object p2, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 298
    iget-object p2, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->$c:Lcom/narvii/model/Community;

    invoke-static {p2, v0, p1}, Lcom/narvii/community/MyCommunityHelper;->access$createShortcut(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
