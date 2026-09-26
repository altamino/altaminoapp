.class public Lcom/narvii/util/dialog/ActionSheetDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/dialog/ActionSheetDialog$Stub;
    }
.end annotation


# static fields
.field public static final FLAG_DANGER:I = 0x1

.field public static final FLAG_RADIO_OFF:I = 0x8

.field public static final FLAG_RADIO_ON:I = 0x4


# instance fields
.field private backgroudImage:Landroid/widget/ImageView;

.field blurReady:Z

.field private cancelButton:Landroid/view/View;

.field private final clickListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

.field private customView:Landroid/view/View;

.field private dirty:Z

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/util/dialog/ActionSheetDialog$Stub;",
            ">;"
        }
    .end annotation
.end field

.field private itemsLayout:Landroid/view/ViewGroup;

.field private listener:Landroid/content/DialogInterface$OnClickListener;

.field private final refresh:Ljava/lang/Runnable;

.field private final setimg:Ljava/lang/Runnable;

.field private showAnimation:Z

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->dialog_action_sheet_layout:I

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    sget v0, Lcom/narvii/lib/R$style;->CustomDialogWithAnimation:I

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->showAnimation:Z

    .line 4
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/ActionSheetDialog$1;-><init>(Lcom/narvii/util/dialog/ActionSheetDialog;)V

    iput-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->setimg:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog$2;

    invoke-direct {v1, p0}, Lcom/narvii/util/dialog/ActionSheetDialog$2;-><init>(Lcom/narvii/util/dialog/ActionSheetDialog;)V

    iput-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 6
    new-instance v2, Lcom/narvii/util/dialog/ActionSheetDialog$3;

    invoke-direct {v2, p0}, Lcom/narvii/util/dialog/ActionSheetDialog$3;-><init>(Lcom/narvii/util/dialog/ActionSheetDialog;)V

    iput-object v2, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->refresh:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->context:Landroid/content/Context;

    .line 7
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    sget p1, Lcom/narvii/lib/R$id;->action_sheet_cancel:I

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->cancelButton:Landroid/view/View;

    sget p1, Lcom/narvii/lib/R$id;->action_sheet_items:I

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->cancelButton:Landroid/view/View;

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/narvii/lib/R$id;->blur_bg:I

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->backgroudImage:Landroid/widget/ImageView;

    sget p1, Lcom/narvii/lib/R$id;->action_sheet_empty:I

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->blurBackground()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->blur()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->backgroudImage:Landroid/widget/ImageView;

    .line 15
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->blurReady:Z

    if-nez p1, :cond_1

    .line 16
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->backgroudImage:Landroid/widget/ImageView;

    .line 17
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->cancelButton:Landroid/view/View;

    .line 19
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->backgroudImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/util/dialog/ActionSheetDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->dirty:Z

    return p0
.end method

.method private blur()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->blurReady:Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const/high16 v2, 0x3f000000    # 0.5f

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;F)Landroid/graphics/Bitmap;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    new-instance v2, Lcom/narvii/util/blur/NativeBlurProcess;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2}, Lcom/narvii/util/blur/NativeBlurProcess;-><init>()V

    .line 24
    .line 25
    const/high16 v3, 0x42480000    # 50.0f

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/blur/NativeBlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 29
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 35
    :catch_1
    return-object v1
.end method

.method static bridge synthetic c(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/util/dialog/ActionSheetDialog;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->dirty:Z

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->blur()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x6

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    if-ge v0, v1, :cond_4

    .line 6
    .line 7
    instance-of v1, p1, Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroid/app/Activity;

    .line 12
    return-object p1

    .line 13
    .line 14
    :cond_0
    instance-of v1, p1, Landroid/content/ContextWrapper;

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    move-object v1, p1

    .line 18
    .line 19
    check-cast v1, Landroid/content/ContextWrapper;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    if-ne v1, p1, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object p1, v1

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    return-object v2

    .line 32
    .line 33
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_4
    return-object v2
.end method


# virtual methods
.method public addItem(II)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;II)V

    return-void
.end method

.method public addItem(III)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;II)V

    return-void
.end method

.method public addItem(IZ)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;Z)V

    return-void
.end method

.method public addItem(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;II)V

    return-void
.end method

.method public addItem(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    .line 1
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;

    invoke-direct {v1, p1, p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->invalidate()V

    return-void
.end method

.method public addItem(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;II)V

    return-void
.end method

.method public addItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    .line 2
    new-instance v2, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->invalidate()V

    return-void
.end method

.method public varargs addItems([I)V
    .locals 5

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItems(Ljava/util/List;)V

    return-void
.end method

.method public varargs addItems([Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItems(Ljava/util/List;)V

    return-void
.end method

.method public blurBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearItems()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->invalidate()V

    .line 9
    return-void
.end method

.method public findCustomViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    :goto_0
    return-object p1
.end method

.method public getBackgroudImage()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->backgroudImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected invalidate()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->dirty:Z

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->refresh:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->refresh:Ljava/lang/Runnable;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public isDark()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCancelText(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->cancelButton:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast v0, Landroid/widget/Button;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 10
    :cond_0
    return-void
.end method

.method public setCustomView(I)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->invalidate()V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    .line 19
    return-object p1
.end method

.method public setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setShowAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->showAnimation:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->title:Ljava/lang/CharSequence;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->invalidate()V

    .line 6
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->dirty:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->refresh:Ljava/lang/Runnable;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->refresh:Ljava/lang/Runnable;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->showAnimation:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    const/high16 v2, 0x3f800000    # 1.0f

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 37
    .line 38
    const-wide/16 v1, 0xc8

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->backgroudImage:Landroid/widget/ImageView;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    sget v2, Lcom/narvii/lib/R$anim;->slide_up:I

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    :cond_2
    return-void
.end method

.method protected updateViews()V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    sget v2, Lcom/narvii/lib/R$color;->action_sheet_normal:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    sget v3, Lcom/narvii/lib/R$color;->action_sheet_danger:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 37
    move-result v2

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->title:Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x1

    .line 46
    .line 47
    if-nez v3, :cond_4

    .line 48
    .line 49
    sget v3, Lcom/narvii/lib/R$layout;->dialog_action_sheet_title:I

    .line 50
    .line 51
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    check-cast v3, Landroid/widget/TextView;

    .line 58
    .line 59
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->title:Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    .line 69
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    move-result v6

    .line 74
    const/4 v7, -0x1

    .line 75
    .line 76
    if-eqz v6, :cond_1

    .line 77
    .line 78
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    .line 79
    .line 80
    if-nez v6, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    .line 84
    move-result v6

    .line 85
    .line 86
    if-eqz v6, :cond_0

    .line 87
    .line 88
    sget v6, Lcom/narvii/lib/R$drawable;->button_action_sheet_round_dark:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_0
    sget v6, Lcom/narvii/lib/R$drawable;->button_action_sheet_round:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    .line 105
    move-result v6

    .line 106
    .line 107
    if-eqz v6, :cond_2

    .line 108
    .line 109
    sget v6, Lcom/narvii/lib/R$drawable;->button_action_sheet_top_black:I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    goto :goto_0

    .line 117
    .line 118
    :cond_2
    sget v6, Lcom/narvii/lib/R$drawable;->button_action_sheet_top:I

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 122
    .line 123
    :goto_0
    iget-object v3, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 127
    move-result v3

    .line 128
    .line 129
    if-nez v3, :cond_3

    .line 130
    .line 131
    iget-object v3, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    .line 132
    .line 133
    if-nez v3, :cond_3

    .line 134
    .line 135
    sget v3, Lcom/narvii/lib/R$layout;->dialog_action_sheet_divider:I

    .line 136
    .line 137
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 141
    :cond_3
    move v3, v4

    .line 142
    goto :goto_1

    .line 143
    :cond_4
    move v3, v5

    .line 144
    .line 145
    :goto_1
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    .line 146
    .line 147
    if-eqz v6, :cond_d

    .line 148
    .line 149
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 153
    move-result v6

    .line 154
    .line 155
    if-eqz v3, :cond_8

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    .line 159
    move-result v3

    .line 160
    .line 161
    if-eqz v3, :cond_6

    .line 162
    .line 163
    iget-object v3, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    .line 164
    .line 165
    if-eqz v6, :cond_5

    .line 166
    .line 167
    sget v7, Lcom/narvii/lib/R$drawable;->button_action_sheet_round_dark:I

    .line 168
    goto :goto_2

    .line 169
    .line 170
    :cond_5
    sget v7, Lcom/narvii/lib/R$drawable;->button_action_sheet_top_black:I

    .line 171
    .line 172
    .line 173
    :goto_2
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 174
    goto :goto_4

    .line 175
    .line 176
    :cond_6
    iget-object v3, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    .line 177
    .line 178
    if-eqz v6, :cond_7

    .line 179
    .line 180
    sget v7, Lcom/narvii/lib/R$drawable;->button_action_sheet_round:I

    .line 181
    goto :goto_3

    .line 182
    .line 183
    :cond_7
    sget v7, Lcom/narvii/lib/R$drawable;->button_action_sheet_top:I

    .line 184
    .line 185
    .line 186
    :goto_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 187
    :goto_4
    move v3, v4

    .line 188
    goto :goto_7

    .line 189
    .line 190
    .line 191
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    .line 192
    move-result v7

    .line 193
    .line 194
    if-eqz v7, :cond_a

    .line 195
    .line 196
    iget-object v7, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    .line 197
    .line 198
    if-eqz v6, :cond_9

    .line 199
    .line 200
    sget v8, Lcom/narvii/lib/R$drawable;->button_action_sheet_bottom_dark:I

    .line 201
    goto :goto_5

    .line 202
    .line 203
    :cond_9
    sget v8, Lcom/narvii/lib/R$drawable;->button_action_sheet_middle_dark:I

    .line 204
    .line 205
    .line 206
    :goto_5
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 207
    goto :goto_7

    .line 208
    .line 209
    :cond_a
    iget-object v7, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    .line 210
    .line 211
    if-eqz v6, :cond_b

    .line 212
    .line 213
    sget v8, Lcom/narvii/lib/R$drawable;->button_action_sheet_bottom:I

    .line 214
    goto :goto_6

    .line 215
    .line 216
    :cond_b
    sget v8, Lcom/narvii/lib/R$drawable;->button_action_sheet_middle:I

    .line 217
    .line 218
    .line 219
    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 220
    .line 221
    :goto_7
    iget-object v7, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 222
    .line 223
    iget-object v8, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 227
    .line 228
    if-nez v6, :cond_d

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    .line 232
    move-result v6

    .line 233
    .line 234
    if-eqz v6, :cond_c

    .line 235
    .line 236
    sget v6, Lcom/narvii/lib/R$layout;->dialog_action_sheet_divider_dark:I

    .line 237
    .line 238
    iget-object v7, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 242
    goto :goto_8

    .line 243
    .line 244
    :cond_c
    sget v6, Lcom/narvii/lib/R$layout;->dialog_action_sheet_divider:I

    .line 245
    .line 246
    iget-object v7, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 250
    .line 251
    :cond_d
    :goto_8
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 255
    move-result v6

    .line 256
    move v7, v4

    .line 257
    .line 258
    :goto_9
    if-ge v7, v6, :cond_1f

    .line 259
    .line 260
    iget-object v8, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    move-result-object v8

    .line 265
    .line 266
    check-cast v8, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;

    .line 267
    .line 268
    iget v9, v8, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;->layoutId:I

    .line 269
    .line 270
    if-nez v9, :cond_f

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    .line 274
    move-result v9

    .line 275
    .line 276
    if-eqz v9, :cond_e

    .line 277
    .line 278
    sget v9, Lcom/narvii/lib/R$layout;->dialog_action_sheet_button_dark:I

    .line 279
    goto :goto_a

    .line 280
    .line 281
    :cond_e
    sget v9, Lcom/narvii/lib/R$layout;->dialog_action_sheet_button:I

    .line 282
    .line 283
    :cond_f
    :goto_a
    iget-object v10, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v9, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 287
    move-result-object v9

    .line 288
    .line 289
    sget v10, Lcom/narvii/lib/R$id;->text:I

    .line 290
    .line 291
    .line 292
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 293
    move-result-object v10

    .line 294
    .line 295
    check-cast v10, Landroid/widget/TextView;

    .line 296
    .line 297
    if-eqz v10, :cond_11

    .line 298
    .line 299
    iget-object v11, v8, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;->title:Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    .line 304
    iget v11, v8, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;->flags:I

    .line 305
    and-int/2addr v11, v5

    .line 306
    .line 307
    if-eqz v11, :cond_10

    .line 308
    move v11, v2

    .line 309
    goto :goto_b

    .line 310
    :cond_10
    move v11, v1

    .line 311
    .line 312
    .line 313
    :goto_b
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    .line 315
    :cond_11
    sget v10, Lcom/narvii/lib/R$id;->radio:I

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 319
    move-result-object v10

    .line 320
    .line 321
    instance-of v11, v10, Landroid/widget/TextView;

    .line 322
    .line 323
    if-eqz v11, :cond_14

    .line 324
    .line 325
    iget v11, v8, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;->flags:I

    .line 326
    .line 327
    and-int/lit8 v11, v11, 0xc

    .line 328
    .line 329
    if-eqz v11, :cond_12

    .line 330
    move v11, v4

    .line 331
    goto :goto_c

    .line 332
    :cond_12
    const/4 v11, 0x4

    .line 333
    .line 334
    .line 335
    :goto_c
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    iget v8, v8, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;->flags:I

    .line 338
    .line 339
    and-int/lit8 v11, v8, 0x4

    .line 340
    .line 341
    if-eqz v11, :cond_13

    .line 342
    .line 343
    check-cast v10, Landroid/widget/TextView;

    .line 344
    .line 345
    sget v8, Lcom/narvii/lib/R$string;->ion_ios_circle_filled:I

    .line 346
    .line 347
    .line 348
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(I)V

    .line 349
    goto :goto_d

    .line 350
    .line 351
    :cond_13
    and-int/lit8 v8, v8, 0x8

    .line 352
    .line 353
    if-eqz v8, :cond_14

    .line 354
    .line 355
    check-cast v10, Landroid/widget/TextView;

    .line 356
    .line 357
    sget v8, Lcom/narvii/lib/R$string;->ion_ios_circle_outline:I

    .line 358
    .line 359
    .line 360
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(I)V

    .line 361
    .line 362
    :cond_14
    :goto_d
    add-int/lit8 v8, v6, -0x1

    .line 363
    .line 364
    if-ne v7, v8, :cond_15

    .line 365
    move v8, v5

    .line 366
    goto :goto_e

    .line 367
    :cond_15
    move v8, v4

    .line 368
    .line 369
    :goto_e
    if-eqz v3, :cond_19

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    .line 373
    move-result v3

    .line 374
    .line 375
    if-eqz v3, :cond_17

    .line 376
    .line 377
    if-eqz v8, :cond_16

    .line 378
    .line 379
    sget v3, Lcom/narvii/lib/R$drawable;->button_action_sheet_round_dark:I

    .line 380
    goto :goto_f

    .line 381
    .line 382
    :cond_16
    sget v3, Lcom/narvii/lib/R$drawable;->button_action_sheet_top_black:I

    .line 383
    .line 384
    .line 385
    :goto_f
    invoke-virtual {v9, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 386
    goto :goto_11

    .line 387
    .line 388
    :cond_17
    if-eqz v8, :cond_18

    .line 389
    .line 390
    sget v3, Lcom/narvii/lib/R$drawable;->button_action_sheet_round:I

    .line 391
    goto :goto_10

    .line 392
    .line 393
    :cond_18
    sget v3, Lcom/narvii/lib/R$drawable;->button_action_sheet_top:I

    .line 394
    .line 395
    .line 396
    :goto_10
    invoke-virtual {v9, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 397
    :goto_11
    move v3, v4

    .line 398
    goto :goto_14

    .line 399
    .line 400
    .line 401
    :cond_19
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    .line 402
    move-result v10

    .line 403
    .line 404
    if-eqz v10, :cond_1b

    .line 405
    .line 406
    if-eqz v8, :cond_1a

    .line 407
    .line 408
    sget v10, Lcom/narvii/lib/R$drawable;->button_action_sheet_bottom_dark:I

    .line 409
    goto :goto_12

    .line 410
    .line 411
    :cond_1a
    sget v10, Lcom/narvii/lib/R$drawable;->button_action_sheet_middle_dark:I

    .line 412
    .line 413
    .line 414
    :goto_12
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 415
    goto :goto_14

    .line 416
    .line 417
    :cond_1b
    if-eqz v8, :cond_1c

    .line 418
    .line 419
    sget v10, Lcom/narvii/lib/R$drawable;->button_action_sheet_bottom:I

    .line 420
    goto :goto_13

    .line 421
    .line 422
    :cond_1c
    sget v10, Lcom/narvii/lib/R$drawable;->button_action_sheet_middle:I

    .line 423
    .line 424
    .line 425
    :goto_13
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 426
    .line 427
    .line 428
    :goto_14
    invoke-virtual {v9, v7}, Landroid/view/View;->setId(I)V

    .line 429
    .line 430
    iget-object v10, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    .line 435
    iget-object v10, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 439
    .line 440
    if-nez v8, :cond_1e

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    .line 444
    move-result v8

    .line 445
    .line 446
    if-eqz v8, :cond_1d

    .line 447
    .line 448
    sget v8, Lcom/narvii/lib/R$layout;->dialog_action_sheet_divider:I

    .line 449
    .line 450
    iget-object v9, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v8, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 454
    goto :goto_15

    .line 455
    .line 456
    :cond_1d
    sget v8, Lcom/narvii/lib/R$layout;->dialog_action_sheet_divider:I

    .line 457
    .line 458
    iget-object v9, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0, v8, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 462
    .line 463
    :cond_1e
    :goto_15
    add-int/lit8 v7, v7, 0x1

    .line 464
    .line 465
    goto/16 :goto_9

    .line 466
    .line 467
    :cond_1f
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 468
    .line 469
    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->cancelButton:Landroid/view/View;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 473
    .line 474
    iput-boolean v4, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->dirty:Z

    .line 475
    return-void
.end method
