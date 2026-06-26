.class Lcom/narvii/master/BottomDrawerViewHelper$10;
.super Ljava/lang/Object;
.source "BottomDrawerViewHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/BottomDrawerViewHelper;->showSuggestCommunity(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/BottomDrawerViewHelper;


# direct methods
.method constructor <init>(Lcom/narvii/master/BottomDrawerViewHelper;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$10;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 372
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$10;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    iget-object p1, p1, Lcom/narvii/master/BottomDrawerViewHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/PreferencesHelper;->saveLastSuggestCommunityShowTime(J)V

    .line 373
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$10;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    iget-object p1, p1, Lcom/narvii/master/BottomDrawerViewHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/PreferencesHelper;->saveBottomDrawerGlobalShownTime(J)V

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
