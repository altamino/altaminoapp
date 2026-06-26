.class public Lcom/narvii/util/dialog/ActionSheetDialog;
.super Lcom/narvii/app/NVDialog;
.source "ActionSheetDialog.java"


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

    .line 66
    sget v0, Lcom/narvii/lib/R$layout;->dialog_action_sheet_layout:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 70
    sget v0, Lcom/narvii/lib/R$style;->CustomDialogWithAnimation:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->showAnimation:Z

    .line 146
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/ActionSheetDialog$1;-><init>(Lcom/narvii/util/dialog/ActionSheetDialog;)V

    iput-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->setimg:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/ActionSheetDialog$2;-><init>(Lcom/narvii/util/dialog/ActionSheetDialog;)V

    iput-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 181
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog$3;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/ActionSheetDialog$3;-><init>(Lcom/narvii/util/dialog/ActionSheetDialog;)V

    iput-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->refresh:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->context:Landroid/content/Context;

    .line 73
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 75
    sget p1, Lcom/narvii/lib/R$id;->action_sheet_cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->cancelButton:Landroid/view/View;

    .line 76
    sget p1, Lcom/narvii/lib/R$id;->action_sheet_items:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    .line 77
    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->cancelButton:Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget p1, Lcom/narvii/lib/R$id;->blur_bg:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->backgroudImage:Landroid/widget/ImageView;

    .line 79
    sget p1, Lcom/narvii/lib/R$id;->action_sheet_empty:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->blurBackground()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->blur()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->backgroudImage:Landroid/widget/ImageView;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-boolean p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->blurReady:Z

    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->setimg:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p2, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->backgroudImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 92
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    const/16 v0, 0x28

    const/4 v1, 0x0

    if-lt p1, p2, :cond_2

    .line 93
    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->cancelButton:Landroid/view/View;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->cancelButton:Landroid/view/View;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/graphics/Bitmap;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->blur()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->backgroudImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/util/dialog/ActionSheetDialog;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->dirty:Z

    return p0
.end method

.method static synthetic access$302(Lcom/narvii/util/dialog/ActionSheetDialog;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->dirty:Z

    return p1
.end method

.method private blur()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    :try_start_0
    iput-boolean v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->blurReady:Z

    .line 134
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 135
    invoke-static {v0, v2}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    new-instance v2, Lcom/narvii/util/blur/NativeBlurProcess;

    invoke-direct {v2}, Lcom/narvii/util/blur/NativeBlurProcess;-><init>()V

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/blur/NativeBlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 141
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :catch_1
    return-object v1
.end method

.method private getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4

    .line 118
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 119
    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 121
    :cond_0
    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_3

    .line 122
    move-object v1, p1

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    goto :goto_2

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method


# virtual methods
.method public addItem(II)V
    .locals 1

    .line 226
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

    .line 229
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;II)V

    return-void
.end method

.method public addItem(IZ)V
    .locals 1

    .line 237
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

    .line 222
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;II)V

    return-void
.end method

.method public addItem(Ljava/lang/String;II)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;

    invoke-direct {v1, p1, p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->invalidate()V

    return-void
.end method

.method public addItem(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 233
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

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    new-instance v2, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->invalidate()V

    return-void
.end method

.method public varargs addItems([I)V
    .locals 5

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 211
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItems(Ljava/util/List;)V

    return-void
.end method

.method public varargs addItems([Ljava/lang/String;)V
    .locals 0

    .line 205
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

    .line 241
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 242
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->invalidate()V

    return-void
.end method

.method public findCustomViewById(I)Landroid/view/View;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getBackgroudImage()Landroid/widget/ImageView;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->backgroudImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected invalidate()V
    .locals 2

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->dirty:Z

    .line 193
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->refresh:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDark()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCancelText(I)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->cancelButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 263
    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void
.end method

.method public setCustomView(I)Landroid/view/View;
    .locals 3

    .line 252
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    .line 253
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->invalidate()V

    .line 254
    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    return-object p1
.end method

.method public setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setShowAnimation(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->showAnimation:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->title:Ljava/lang/CharSequence;

    .line 248
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->invalidate()V

    return-void
.end method

.method public show()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 270
    iget-boolean v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->dirty:Z

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->refresh:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 274
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 276
    iget-boolean v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->showAnimation:Z

    if-eqz v0, :cond_2

    .line 277
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 279
    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->backgroudImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$anim;->slide_up:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method

.method protected updateViews()V
    .locals 12

    .line 289
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 290
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$color;->action_sheet_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 293
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$color;->action_sheet_danger:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 298
    iget-object v3, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->title:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_4

    .line 299
    sget v3, Lcom/narvii/lib/R$layout;->dialog_action_sheet_title:I

    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 301
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 305
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 307
    sget v6, Lcom/narvii/lib/R$drawable;->button_action_sheet_round_dark:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 308
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 311
    :cond_0
    sget v6, Lcom/narvii/lib/R$drawable;->button_action_sheet_round:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 315
    sget v6, Lcom/narvii/lib/R$drawable;->button_action_sheet_top_black:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 316
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 319
    :cond_2
    sget v6, Lcom/narvii/lib/R$drawable;->button_action_sheet_top:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 323
    :goto_0
    iget-object v3, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 324
    sget v3, Lcom/narvii/lib/R$layout;->dialog_action_sheet_divider:I

    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    .line 330
    :goto_1
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    if-eqz v6, :cond_d

    .line 332
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v3, :cond_8

    .line 334
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 335
    iget-object v3, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    if-eqz v6, :cond_5

    sget v7, Lcom/narvii/lib/R$drawable;->button_action_sheet_round_dark:I

    goto :goto_2

    :cond_5
    sget v7, Lcom/narvii/lib/R$drawable;->button_action_sheet_top_black:I

    .line 336
    :goto_2
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 340
    :cond_6
    iget-object v3, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    if-eqz v6, :cond_7

    sget v7, Lcom/narvii/lib/R$drawable;->button_action_sheet_round:I

    goto :goto_3

    :cond_7
    sget v7, Lcom/narvii/lib/R$drawable;->button_action_sheet_top:I

    .line 341
    :goto_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_4
    const/4 v3, 0x0

    goto :goto_7

    .line 346
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 347
    iget-object v7, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    if-eqz v6, :cond_9

    sget v8, Lcom/narvii/lib/R$drawable;->button_action_sheet_bottom_dark:I

    goto :goto_5

    :cond_9
    sget v8, Lcom/narvii/lib/R$drawable;->button_action_sheet_middle_dark:I

    .line 348
    :goto_5
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .line 352
    :cond_a
    iget-object v7, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    if-eqz v6, :cond_b

    sget v8, Lcom/narvii/lib/R$drawable;->button_action_sheet_bottom:I

    goto :goto_6

    :cond_b
    sget v8, Lcom/narvii/lib/R$drawable;->button_action_sheet_middle:I

    .line 353
    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 359
    :goto_7
    iget-object v7, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->customView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-nez v6, :cond_d

    .line 362
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 363
    sget v6, Lcom/narvii/lib/R$layout;->dialog_action_sheet_divider_dark:I

    iget-object v7, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_8

    .line 367
    :cond_c
    sget v6, Lcom/narvii/lib/R$layout;->dialog_action_sheet_divider:I

    iget-object v7, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 374
    :cond_d
    :goto_8
    iget-object v6, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v6, :cond_1f

    .line 375
    iget-object v8, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;

    .line 377
    iget v9, v8, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;->layoutId:I

    if-nez v9, :cond_f

    .line 379
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 380
    sget v9, Lcom/narvii/lib/R$layout;->dialog_action_sheet_button_dark:I

    goto :goto_a

    .line 382
    :cond_e
    sget v9, Lcom/narvii/lib/R$layout;->dialog_action_sheet_button:I

    .line 385
    :cond_f
    :goto_a
    iget-object v10, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 386
    sget v10, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_11

    .line 388
    iget-object v11, v8, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget v11, v8, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;->flags:I

    and-int/2addr v11, v5

    if-eqz v11, :cond_10

    move v11, v2

    goto :goto_b

    :cond_10
    move v11, v1

    :goto_b
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    :cond_11
    sget v10, Lcom/narvii/lib/R$id;->radio:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 392
    instance-of v11, v10, Landroid/widget/TextView;

    if-eqz v11, :cond_14

    .line 393
    iget v11, v8, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;->flags:I

    and-int/lit8 v11, v11, 0xc

    if-eqz v11, :cond_12

    const/4 v11, 0x0

    goto :goto_c

    :cond_12
    const/4 v11, 0x4

    :goto_c
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget v8, v8, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;->flags:I

    and-int/lit8 v11, v8, 0x4

    if-eqz v11, :cond_13

    .line 395
    check-cast v10, Landroid/widget/TextView;

    sget v8, Lcom/narvii/lib/R$string;->ion_ios_circle_filled:I

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_d

    :cond_13
    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_14

    .line 397
    check-cast v10, Landroid/widget/TextView;

    sget v8, Lcom/narvii/lib/R$string;->ion_ios_circle_outline:I

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_14
    :goto_d
    add-int/lit8 v8, v6, -0x1

    if-ne v3, v8, :cond_15

    const/4 v8, 0x1

    goto :goto_e

    :cond_15
    const/4 v8, 0x0

    :goto_e
    if-eqz v7, :cond_19

    .line 403
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    move-result v7

    if-eqz v7, :cond_17

    if-eqz v8, :cond_16

    .line 404
    sget v7, Lcom/narvii/lib/R$drawable;->button_action_sheet_round_dark:I

    goto :goto_f

    :cond_16
    sget v7, Lcom/narvii/lib/R$drawable;->button_action_sheet_top_black:I

    :goto_f
    invoke-virtual {v9, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_11

    :cond_17
    if-eqz v8, :cond_18

    .line 408
    sget v7, Lcom/narvii/lib/R$drawable;->button_action_sheet_round:I

    goto :goto_10

    :cond_18
    sget v7, Lcom/narvii/lib/R$drawable;->button_action_sheet_top:I

    :goto_10
    invoke-virtual {v9, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_11
    const/4 v7, 0x0

    goto :goto_14

    .line 414
    :cond_19
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    move-result v10

    if-eqz v10, :cond_1b

    if-eqz v8, :cond_1a

    .line 415
    sget v10, Lcom/narvii/lib/R$drawable;->button_action_sheet_bottom_dark:I

    goto :goto_12

    :cond_1a
    sget v10, Lcom/narvii/lib/R$drawable;->button_action_sheet_middle_dark:I

    :goto_12
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_14

    :cond_1b
    if-eqz v8, :cond_1c

    .line 419
    sget v10, Lcom/narvii/lib/R$drawable;->button_action_sheet_bottom:I

    goto :goto_13

    :cond_1c
    sget v10, Lcom/narvii/lib/R$drawable;->button_action_sheet_middle:I

    :goto_13
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 425
    :goto_14
    invoke-virtual {v9, v3}, Landroid/view/View;->setId(I)V

    .line 426
    iget-object v10, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object v10, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-nez v8, :cond_1e

    .line 430
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->isDark()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 431
    sget v8, Lcom/narvii/lib/R$layout;->dialog_action_sheet_divider:I

    iget-object v9, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_15

    .line 435
    :cond_1d
    sget v8, Lcom/narvii/lib/R$layout;->dialog_action_sheet_divider:I

    iget-object v9, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_1e
    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 443
    :cond_1f
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->itemsLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->cancelButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 445
    iput-boolean v4, p0, Lcom/narvii/util/dialog/ActionSheetDialog;->dirty:Z

    return-void
.end method
