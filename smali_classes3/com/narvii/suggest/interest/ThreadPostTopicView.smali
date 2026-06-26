.class public Lcom/narvii/suggest/interest/ThreadPostTopicView;
.super Lcom/narvii/widget/TagRoundView;
.source "ThreadPostTopicView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/ThreadPostTopicView$Companion;
    }
.end annotation


# static fields
.field private static final CHECKED_COLOR:I

.field public static final Companion:Lcom/narvii/suggest/interest/ThreadPostTopicView$Companion;

.field private static final UNCHECKED_BG_COLOR:I

.field private static final UNCHECKED_COLOR:I


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private checked:Z

.field private storyTopic:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/suggest/interest/ThreadPostTopicView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/suggest/interest/ThreadPostTopicView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->Companion:Lcom/narvii/suggest/interest/ThreadPostTopicView$Companion;

    const-string v0, "#41C4A7"

    .line 53
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->UNCHECKED_COLOR:I

    const-string v0, "#45ba96"

    .line 54
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->CHECKED_COLOR:I

    const-string v0, "#44000000"

    .line 55
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->UNCHECKED_BG_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TagRoundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected getAutoBackgroundColor()I
    .locals 1

    .line 49
    sget v0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->CHECKED_COLOR:I

    return v0
.end method

.method public final getChecked()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->checked:Z

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getStoryTopic()Lcom/narvii/model/story/StoryTopic;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public final setChecked(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->checked:Z

    .line 22
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->updateBackground()V

    return-void
.end method

.method public final setStoryTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    .line 16
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->updateView()V

    return-void
.end method

.method protected updateBackground()V
    .locals 3

    .line 31
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->updateBackground()V

    .line 32
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 33
    iget-boolean v1, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->checked:Z

    if-nez v1, :cond_0

    .line 34
    sget v1, Lcom/narvii/suggest/interest/ThreadPostTopicView;->UNCHECKED_BG_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/narvii/suggest/interest/ThreadPostTopicView;->UNCHECKED_COLOR:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 36
    iget-object v1, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    sget v2, Lcom/narvii/suggest/interest/ThreadPostTopicView;->UNCHECKED_COLOR:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->getAutoBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 39
    iget-object v1, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected updateView()V
    .locals 2

    .line 26
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->updateView()V

    .line 27
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    const-string v1, "topicText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
