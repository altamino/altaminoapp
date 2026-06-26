.class Lcom/narvii/detail/FeedDetailAdapter$2;
.super Ljava/lang/Object;
.source "FeedDetailAdapter.java"

# interfaces
.implements Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailAdapter;->createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailAdapter;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailAdapter$2;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareMediaClicked(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/model/NVObject;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Lcom/narvii/share/BaseShareButtonRepost;",
            ")V"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailAdapter$2;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailAdapter;->shouldBlockShareMedia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-static {p1, p2, p3, p4, p5}, Lcom/narvii/share/ShareDialog;->getShareDialogFromMedia(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/detail/FeedDetailAdapter$2;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    iget-object p2, p2, Lcom/narvii/detail/DetailAdapter;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    :cond_0
    return-void
.end method
