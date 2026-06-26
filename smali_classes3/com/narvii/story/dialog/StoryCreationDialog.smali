.class public final Lcom/narvii/story/dialog/StoryCreationDialog;
.super Lcom/narvii/app/NVDialog;
.source "StoryCreationDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/dialog/StoryCreationDialog$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryCreationDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryCreationDialog.kt\ncom/narvii/story/dialog/StoryCreationDialog\n*L\n1#1,83:1\n*E\n"
.end annotation


# instance fields
.field private clickListener:Lcom/narvii/story/dialog/StoryCreationDialog$OnClickListener;

.field private final draftCover:Lcom/narvii/widget/NVImageView;

.field private final draftCoverDefault:Landroid/view/View;

.field private final nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 14

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1000cd

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object p1, p0, Lcom/narvii/story/dialog/StoryCreationDialog;->nvContext:Lcom/narvii/app/NVContext;

    const p1, 0x7f0b01ba

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f0905d6

    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 24
    new-instance v0, Lcom/narvii/widget/NVGradientDrawable;

    const-wide v1, 0xff6c79fcL

    long-to-int v2, v1

    const-wide v3, 0xff8f45ffL

    long-to-int v1, v3

    invoke-direct {v0, v2, v1}, Lcom/narvii/widget/NVGradientDrawable;-><init>(II)V

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x8

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v5, 0x1

    aput v1, v3, v5

    const/4 v6, 0x2

    aput v1, v3, v6

    const/4 v7, 0x3

    aput v1, v3, v7

    const/4 v8, 0x4

    aput v1, v3, v8

    const/4 v9, 0x5

    aput v1, v3, v9

    const/4 v10, 0x6

    aput v1, v3, v10

    const/4 v11, 0x7

    aput v1, v3, v11

    .line 26
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVGradientDrawable;->setRadius([F)V

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f090375

    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 30
    new-instance v0, Lcom/narvii/widget/NVGradientDrawable;

    const-wide v12, 0xff9091ffL

    long-to-int v1, v12

    const-wide v12, 0xff834cffL

    long-to-int v3, v12

    invoke-direct {v0, v1, v3}, Lcom/narvii/widget/NVGradientDrawable;-><init>(II)V

    .line 31
    sget-object v1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v12, "context"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v12, 0x41000000    # 8.0f

    invoke-virtual {v1, v3, v12}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result v1

    new-array v2, v2, [F

    aput v1, v2, v4

    aput v1, v2, v5

    aput v1, v2, v6

    aput v1, v2, v7

    aput v1, v2, v8

    aput v1, v2, v9

    aput v1, v2, v10

    aput v1, v2, v11

    .line 32
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVGradientDrawable;->setRadius([F)V

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "findViewById<View>(R.id.\u2026)\n            }\n        }"

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/story/dialog/StoryCreationDialog;->draftCoverDefault:Landroid/view/View;

    const p1, 0x7f090606

    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.iv_draft_cover)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/story/dialog/StoryCreationDialog;->draftCover:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f090604

    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090988

    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090989

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object p1, p0, Lcom/narvii/story/dialog/StoryCreationDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "draft"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/DraftManager;

    const-string v0, "story"

    .line 42
    invoke-virtual {p1, v0}, Lcom/narvii/post/DraftManager;->getLatestDraftInfo(Ljava/lang/String;)Lcom/narvii/post/DraftInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    iget-object v0, v0, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    const-class v2, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p1, v0, v2}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->icon()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 51
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/narvii/story/dialog/StoryCreationDialog;->draftCover:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcom/narvii/story/dialog/StoryCreationDialog;->draftCoverDefault:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/narvii/story/dialog/StoryCreationDialog;->draftCover:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_1

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/dialog/StoryCreationDialog;->draftCover:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/narvii/story/dialog/StoryCreationDialog;->draftCoverDefault:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final getNvContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/narvii/story/dialog/StoryCreationDialog;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f090988

    if-nez v0, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 68
    iget-object v0, p0, Lcom/narvii/story/dialog/StoryCreationDialog;->clickListener:Lcom/narvii/story/dialog/StoryCreationDialog$OnClickListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/narvii/story/dialog/StoryCreationDialog$OnClickListener;->onCreateNewClick(Landroid/view/View;)V

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_3

    :cond_3
    :goto_1
    const v1, 0x7f090989

    if-nez v0, :cond_4

    goto :goto_2

    .line 71
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 72
    iget-object v0, p0, Lcom/narvii/story/dialog/StoryCreationDialog;->clickListener:Lcom/narvii/story/dialog/StoryCreationDialog$OnClickListener;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/narvii/story/dialog/StoryCreationDialog$OnClickListener;->onViewDraftClick(Landroid/view/View;)V

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_3

    :cond_6
    :goto_2
    const p1, 0x7f090604

    if-nez v0, :cond_7

    goto :goto_3

    .line 75
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_8

    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_8
    :goto_3
    return-void
.end method

.method public final setOnClickListener(Lcom/narvii/story/dialog/StoryCreationDialog$OnClickListener;)V
    .locals 1

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/narvii/story/dialog/StoryCreationDialog;->clickListener:Lcom/narvii/story/dialog/StoryCreationDialog$OnClickListener;

    return-void
.end method
