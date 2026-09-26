.class Lcom/narvii/master/MyCommunityListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MyCommunityListFragment;->createShortcut(Lcom/narvii/model/Community;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;

.field final synthetic val$c:Lcom/narvii/model/Community;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Community;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$3;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/master/MyCommunityListFragment$3;->val$c:Lcom/narvii/model/Community;

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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$3;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const v0, 0x7f120310

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$3;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$3;->val$c:Lcom/narvii/model/Community;

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/narvii/master/MyCommunityListFragment;->createShortcut(Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V

    .line 31
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$3;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$3;->val$c:Lcom/narvii/model/Community;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0, p1}, Lcom/narvii/master/MyCommunityListFragment;->createShortcut(Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V

    .line 19
    :cond_0
    return-void
.end method
