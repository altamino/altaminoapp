.class Lcom/narvii/widget/ShareMediaBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/ShareMediaBar$1;->this$0:Lcom/narvii/widget/ShareMediaBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$id;->share_media_entry:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_2

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/widget/ShareMediaBar$1;->this$0:Lcom/narvii/widget/ShareMediaBar;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/widget/ShareMediaBar;->shareMediaClickListener:Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p1, Lcom/narvii/widget/ShareMediaBar;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    iget-object v2, p1, Lcom/narvii/widget/ShareMediaBar;->media:Lcom/narvii/model/Media;

    .line 19
    .line 20
    iget-object v3, p1, Lcom/narvii/widget/ShareMediaBar;->parent:Lcom/narvii/model/NVObject;

    .line 21
    .line 22
    iget-object v4, p1, Lcom/narvii/widget/ShareMediaBar;->mediaList:Ljava/util/List;

    .line 23
    .line 24
    iget-object v5, p1, Lcom/narvii/widget/ShareMediaBar;->buttonRepost:Lcom/narvii/share/BaseShareButtonRepost;

    .line 25
    .line 26
    .line 27
    invoke-interface/range {v0 .. v5}, Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;->onShareMediaClicked(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object p1, p1, Lcom/narvii/widget/ShareMediaBar;->innerClickListener:Lcom/narvii/widget/ShareMediaBar$ShareMediaInnerClickListener;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/narvii/widget/ShareMediaBar$ShareMediaInnerClickListener;->onShareMediaClicked()V

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/ShareMediaBar$1;->this$0:Lcom/narvii/widget/ShareMediaBar;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/narvii/widget/ShareMediaBar;->context:Lcom/narvii/app/NVContext;

    .line 40
    .line 41
    iget-object v1, p1, Lcom/narvii/widget/ShareMediaBar;->media:Lcom/narvii/model/Media;

    .line 42
    .line 43
    iget-object v2, p1, Lcom/narvii/widget/ShareMediaBar;->parent:Lcom/narvii/model/NVObject;

    .line 44
    .line 45
    iget-object v3, p1, Lcom/narvii/widget/ShareMediaBar;->mediaList:Ljava/util/List;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/narvii/widget/ShareMediaBar;->buttonRepost:Lcom/narvii/share/BaseShareButtonRepost;

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1, v2, v3, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromMedia(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/widget/ShareMediaBar$1;->this$0:Lcom/narvii/widget/ShareMediaBar;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/narvii/widget/ShareMediaBar;->source:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 63
    :cond_2
    :goto_0
    return-void
.end method
