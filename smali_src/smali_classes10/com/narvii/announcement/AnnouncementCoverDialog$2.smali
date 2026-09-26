.class Lcom/narvii/announcement/AnnouncementCoverDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/announcement/AnnouncementCoverDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/announcement/AnnouncementCoverDialog;

.field final synthetic val$mainLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/announcement/AnnouncementCoverDialog;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog$2;->this$0:Lcom/narvii/announcement/AnnouncementCoverDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/announcement/AnnouncementCoverDialog$2;->val$mainLayout:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog$2;->val$mainLayout:Landroid/view/View;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog$2;->this$0:Lcom/narvii/announcement/AnnouncementCoverDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f010031

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
