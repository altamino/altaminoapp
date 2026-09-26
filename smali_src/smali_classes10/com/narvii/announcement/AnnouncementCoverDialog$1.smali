.class Lcom/narvii/announcement/AnnouncementCoverDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/announcement/AnnouncementCoverDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/announcement/AnnouncementCoverDialog;

.field final synthetic val$onImageChangedListener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# direct methods
.method constructor <init>(Lcom/narvii/announcement/AnnouncementCoverDialog;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog$1;->this$0:Lcom/narvii/announcement/AnnouncementCoverDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/announcement/AnnouncementCoverDialog$1;->val$onImageChangedListener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog$1;->val$onImageChangedListener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/widget/NVImageView$OnImageChangedListener;->onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V

    .line 8
    :cond_0
    return-void
.end method
