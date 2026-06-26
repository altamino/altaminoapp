.class Lcom/narvii/widget/ShareMediaBar$1;
.super Ljava/lang/Object;
.source "ShareMediaBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/ShareMediaBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/ShareMediaBar;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ShareMediaBar;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/widget/ShareMediaBar$1;->this$0:Lcom/narvii/widget/ShareMediaBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/narvii/lib/R$id;->share_media_entry:I

    if-ne p1, v0, :cond_2

    .line 73
    iget-object p1, p0, Lcom/narvii/widget/ShareMediaBar$1;->this$0:Lcom/narvii/widget/ShareMediaBar;

    iget-object v0, p1, Lcom/narvii/widget/ShareMediaBar;->shareMediaClickListener:Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p1, Lcom/narvii/widget/ShareMediaBar;->context:Lcom/narvii/app/NVContext;

    iget-object v2, p1, Lcom/narvii/widget/ShareMediaBar;->media:Lcom/narvii/model/Media;

    iget-object v3, p1, Lcom/narvii/widget/ShareMediaBar;->parent:Lcom/narvii/model/NVObject;

    iget-object v4, p1, Lcom/narvii/widget/ShareMediaBar;->mediaList:Ljava/util/List;

    iget-object v5, p1, Lcom/narvii/widget/ShareMediaBar;->buttonRepost:Lcom/narvii/share/BaseShareButtonRepost;

    invoke-interface/range {v0 .. v5}, Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;->onShareMediaClicked(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p1, Lcom/narvii/widget/ShareMediaBar;->innerClickListener:Lcom/narvii/widget/ShareMediaBar$ShareMediaInnerClickListener;

    if-eqz p1, :cond_1

    .line 77
    invoke-interface {p1}, Lcom/narvii/widget/ShareMediaBar$ShareMediaInnerClickListener;->onShareMediaClicked()V

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/ShareMediaBar$1;->this$0:Lcom/narvii/widget/ShareMediaBar;

    iget-object v0, p1, Lcom/narvii/widget/ShareMediaBar;->context:Lcom/narvii/app/NVContext;

    iget-object v1, p1, Lcom/narvii/widget/ShareMediaBar;->media:Lcom/narvii/model/Media;

    iget-object v2, p1, Lcom/narvii/widget/ShareMediaBar;->parent:Lcom/narvii/model/NVObject;

    iget-object v3, p1, Lcom/narvii/widget/ShareMediaBar;->mediaList:Ljava/util/List;

    iget-object p1, p1, Lcom/narvii/widget/ShareMediaBar;->buttonRepost:Lcom/narvii/share/BaseShareButtonRepost;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromMedia(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/widget/ShareMediaBar$1;->this$0:Lcom/narvii/widget/ShareMediaBar;

    iget-object v0, v0, Lcom/narvii/widget/ShareMediaBar;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method
