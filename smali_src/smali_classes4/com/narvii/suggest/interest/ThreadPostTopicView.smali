.class public Lcom/narvii/suggest/interest/ThreadPostTopicView;
.super Lcom/narvii/widget/TagRoundView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/ThreadPostTopicView$Companion;
    }
.end annotation


# static fields
.field private static final CHECKED_COLOR:I

.field public static final Companion:Lcom/narvii/suggest/interest/ThreadPostTopicView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UNCHECKED_BG_COLOR:I

.field private static final UNCHECKED_COLOR:I


# instance fields
.field private checked:Z

.field private storyTopic:Lcom/narvii/model/story/StoryTopic;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/suggest/interest/ThreadPostTopicView$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/narvii/suggest/interest/ThreadPostTopicView$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->Companion:Lcom/narvii/suggest/interest/ThreadPostTopicView$Companion;

    .line 9
    .line 10
    const-string v0, "#41C4A7"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    sput v0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->UNCHECKED_COLOR:I

    .line 17
    .line 18
    const-string v0, "#45ba96"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 22
    move-result v0

    .line 23
    .line 24
    sput v0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->CHECKED_COLOR:I

    .line 25
    .line 26
    const-string v0, "#44000000"

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 30
    move-result v0

    .line 31
    .line 32
    sput v0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->UNCHECKED_BG_COLOR:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TagRoundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected getAutoBackgroundColor()I
    .locals 1

    sget v0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->CHECKED_COLOR:I

    return v0
.end method

.method public final getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->checked:Z

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final getStoryTopic()Lcom/narvii/model/story/StoryTopic;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public final setChecked(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->checked:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->updateBackground()V

    .line 6
    return-void
.end method

.method public final setStoryTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 0
    .param p1    # Lcom/narvii/model/story/StoryTopic;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->updateView()V

    .line 6
    return-void
.end method

.method protected updateBackground()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->updateBackground()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/narvii/suggest/interest/ThreadPostTopicView;->checked:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    sget v1, Lcom/narvii/suggest/interest/ThreadPostTopicView;->UNCHECKED_BG_COLOR:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const/high16 v2, 0x3f800000    # 1.0f

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 26
    move-result v1

    .line 27
    float-to-int v1, v1

    .line 28
    .line 29
    sget v2, Lcom/narvii/suggest/interest/ThreadPostTopicView;->UNCHECKED_COLOR:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->getAutoBackgroundColor()I

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    .line 48
    const/4 v2, -0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    return-void
.end method

.method protected updateView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->updateView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    return-void
.end method
