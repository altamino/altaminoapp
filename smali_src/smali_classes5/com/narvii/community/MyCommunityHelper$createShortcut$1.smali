.class public final Lcom/narvii/community/MyCommunityHelper$createShortcut$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
.method constructor <init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->$c:Lcom/narvii/model/Community;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1    # Lcom/android/volley/VolleyError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "volleyError"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/community/MyCommunityHelper;->access$getContext(Lcom/narvii/community/MyCommunityHelper;)Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    const v0, 0x7f120310

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->$c:Lcom/narvii/model/Community;

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0, v1}, Lcom/narvii/community/MyCommunityHelper;->access$createShortcut(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V

    .line 36
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1
    .param p1    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "imageContainer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;->$c:Lcom/narvii/model/Community;

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v0, p1}, Lcom/narvii/community/MyCommunityHelper;->access$createShortcut(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V

    .line 24
    :cond_0
    return-void
.end method
