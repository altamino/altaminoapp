.class public Lcom/narvii/suggest/interest/GenderListDialog;
.super Lcom/narvii/widget/ListDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/GenderListDialog$GenderAdapter;
    }
.end annotation


# static fields
.field private static final GENDER_ARRAY:[Ljava/lang/Integer;

.field private static final STATE_FOCUSED:[I

.field private static final STATE_NORMAL:[I

.field private static final STATE_PRESSED:[I


# instance fields
.field private final callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final genderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    .line 3
    const v0, 0x10100a7

    .line 4
    .line 5
    .line 6
    filled-new-array {v0}, [I

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/suggest/interest/GenderListDialog;->STATE_PRESSED:[I

    .line 10
    .line 11
    .line 12
    const v0, 0x101009c

    .line 13
    .line 14
    .line 15
    filled-new-array {v0}, [I

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/suggest/interest/GenderListDialog;->STATE_FOCUSED:[I

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    new-array v1, v0, [I

    .line 22
    .line 23
    sput-object v1, Lcom/narvii/suggest/interest/GenderListDialog;->STATE_NORMAL:[I

    .line 24
    const/4 v1, 0x3

    .line 25
    .line 26
    new-array v1, v1, [Ljava/lang/Integer;

    .line 27
    const/4 v2, 0x1

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    aput-object v3, v1, v0

    .line 34
    const/4 v0, 0x2

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    aput-object v3, v1, v2

    .line 41
    .line 42
    const/16 v2, 0xff

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    aput-object v2, v1, v0

    .line 49
    .line 50
    sput-object v1, Lcom/narvii/suggest/interest/GenderListDialog;->GENDER_ARRAY:[Ljava/lang/Integer;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f130160

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/ListDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    .line 8
    sget-object p1, Lcom/narvii/suggest/interest/GenderListDialog;->GENDER_ARRAY:[Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/suggest/interest/GenderListDialog;->genderList:Ljava/util/List;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/narvii/suggest/interest/GenderListDialog;->callback:Lcom/narvii/util/Callback;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/widget/ListDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/GenderListDialog;->getListSelector()Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->setListAdapter()V

    .line 29
    .line 30
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 31
    const/4 p2, -0x1

    .line 32
    const/4 v0, -0x2

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    const/16 p2, 0x11

    .line 38
    .line 39
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/widget/ListDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method

.method public static synthetic a(Lcom/narvii/suggest/interest/GenderListDialog;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/GenderListDialog;->lambda$createAdapter$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static getGenderStringRes(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    const/4 v0, 0x2

    .line 9
    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0xff

    .line 13
    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    .line 18
    .line 19
    :cond_0
    const p0, 0x7f120d74

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    .line 26
    .line 27
    :cond_1
    const p0, 0x7f120765

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    .line 34
    .line 35
    :cond_2
    const p0, 0x7f120bdf

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method private synthetic lambda$createAdapter$0(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/GenderListDialog;->callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 11
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/list/NVAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/suggest/interest/GenderListDialog$GenderAdapter;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/widget/ListDialog;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/suggest/interest/GenderListDialog;->genderList:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/narvii/suggest/interest/GenderListDialog$GenderAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/suggest/interest/a;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/narvii/suggest/interest/a;-><init>(Lcom/narvii/suggest/interest/GenderListDialog;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/suggest/interest/GenderListDialog$GenderAdapter;->setCallback(Lcom/narvii/suggest/interest/GenderListDialog$GenderAdapter$Callback;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->getListView()Landroid/widget/ListView;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 25
    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/narvii/suggest/interest/GenderListDialog;->STATE_PRESSED:[I

    .line 8
    .line 9
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 10
    .line 11
    .line 12
    const v3, -0x19191a

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    sget-object v1, Lcom/narvii/suggest/interest/GenderListDialog;->STATE_FOCUSED:[I

    .line 21
    .line 22
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    sget-object v1, Lcom/narvii/suggest/interest/GenderListDialog;->STATE_NORMAL:[I

    .line 31
    .line 32
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 40
    return-object v0
.end method

.method protected layout()I
    .locals 1

    const v0, 0x7f0d01bd

    return v0
.end method
