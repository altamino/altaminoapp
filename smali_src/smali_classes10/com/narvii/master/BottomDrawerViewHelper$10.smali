.class Lcom/narvii/master/BottomDrawerViewHelper$10;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$10;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$10;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/BottomDrawerViewHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 5
    .line 6
    new-instance v0, Ljava/util/Date;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/PreferencesHelper;->saveLastSuggestCommunityShowTime(J)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$10;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/master/BottomDrawerViewHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 21
    .line 22
    new-instance v0, Ljava/util/Date;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 29
    move-result-wide v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/PreferencesHelper;->saveBottomDrawerGlobalShownTime(J)V

    .line 33
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
