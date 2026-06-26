.class Lcom/narvii/story/quiz/StoryQuizResultAdapter$ScoreAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "StoryQuizResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/quiz/StoryQuizResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoreAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/story/quiz/StoryQuizResultAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$ScoreAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    .line 123
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$ScoreAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    iget-object v0, v0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const p1, 0x7f0b05c8

    .line 148
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 149
    iget-object p2, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$ScoreAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    invoke-static {p2}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->access$000(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)Lcom/narvii/model/CurrentQuizzesResult;

    move-result-object p2

    if-eqz p2, :cond_3

    const p2, 0x7f0908fd

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p3, 0x7f0908fe

    .line 152
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f090d16

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/Color3DTextView;

    const v1, 0x7f090d18

    .line 154
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090121

    .line 155
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 157
    iget-object v3, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$ScoreAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    invoke-static {v3}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->access$000(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)Lcom/narvii/model/CurrentQuizzesResult;

    move-result-object v3

    iget v3, v3, Lcom/narvii/model/CurrentQuizzesResult;->latestScore:I

    .line 158
    iget-object v4, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$ScoreAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    invoke-static {v4}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->access$000(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)Lcom/narvii/model/CurrentQuizzesResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/CurrentQuizzesResult;->getLastBeatRate()I

    move-result v4

    .line 160
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 161
    fill-array-data v6, :array_0

    invoke-virtual {v0, v6}, Lcom/narvii/widget/Color3DTextView;->setTextColors([I)V

    const v6, -0x829801

    .line 162
    invoke-virtual {v0, v6}, Lcom/narvii/widget/Color3DTextView;->setShadowColor(I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_0

    const v0, 0x7f0f0e86

    .line 165
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f080483

    .line 167
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v8, 0x7f0f0e83

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x3c

    if-ge v4, v2, :cond_1

    const v0, 0x7f080484

    .line 171
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f080486

    .line 172
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v2, 0x7f080485

    .line 174
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f080487

    .line 175
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-array p2, v5, [I

    .line 176
    fill-array-data p2, :array_1

    invoke-virtual {v0, p2}, Lcom/narvii/widget/Color3DTextView;->setTextColors([I)V

    const/16 p2, -0x70e2

    .line 177
    invoke-virtual {v0, p2}, Lcom/narvii/widget/Color3DTextView;->setShadowColor(I)V

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f0d4b

    new-array v0, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$ScoreAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    invoke-static {v2}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->access$000(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)Lcom/narvii/model/CurrentQuizzesResult;

    move-result-object v2

    iget v2, v2, Lcom/narvii/model/CurrentQuizzesResult;->highestScore:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 182
    iget-object p3, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$ScoreAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    invoke-static {p3}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->access$000(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)Lcom/narvii/model/CurrentQuizzesResult;

    move-result-object p3

    iget p3, p3, Lcom/narvii/model/CurrentQuizzesResult;->totalTimes:I

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    if-ne p3, v7, :cond_2

    const v2, 0x7f0f0e73

    goto :goto_1

    :cond_2
    const v2, 0x7f0f0e75

    :goto_1
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, v6

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 184
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-object p1

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x29a1
        -0x87b
    .end array-data
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
