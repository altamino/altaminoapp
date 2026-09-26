.class public Lcom/mobeta/android/dslv/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$k;


# instance fields
.field private mFloatBGColor:I

.field private mFloatBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/high16 v0, -0x1000000

    .line 6
    .line 7
    iput v0, p0, Lcom/mobeta/android/dslv/e;->mFloatBGColor:I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/mobeta/android/dslv/e;->mListView:Landroid/widget/ListView;

    .line 10
    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/e;->mListView:Landroid/widget/ListView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr p1, v1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mobeta/android/dslv/e;->mListView:Landroid/widget/ListView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr p1, v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 27
    const/4 v1, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mobeta/android/dslv/e;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 44
    .line 45
    iget-object v1, p0, Lcom/mobeta/android/dslv/e;->mImageView:Landroid/widget/ImageView;

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    new-instance v1, Landroid/widget/ImageView;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/mobeta/android/dslv/e;->mListView:Landroid/widget/ListView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    iput-object v1, p0, Lcom/mobeta/android/dslv/e;->mImageView:Landroid/widget/ImageView;

    .line 61
    .line 62
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/e;->mImageView:Landroid/widget/ImageView;

    .line 63
    .line 64
    iget v2, p0, Lcom/mobeta/android/dslv/e;->mFloatBGColor:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    .line 69
    iget-object v1, p0, Lcom/mobeta/android/dslv/e;->mImageView:Landroid/widget/ImageView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    .line 74
    iget-object v0, p0, Lcom/mobeta/android/dslv/e;->mImageView:Landroid/widget/ImageView;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/mobeta/android/dslv/e;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/mobeta/android/dslv/e;->mImageView:Landroid/widget/ImageView;

    .line 82
    .line 83
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 87
    move-result v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 91
    move-result p1

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, v2, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    iget-object p1, p0, Lcom/mobeta/android/dslv/e;->mImageView:Landroid/widget/ImageView;

    .line 100
    return-object p1
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    check-cast p1, Landroid/widget/ImageView;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/mobeta/android/dslv/e;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mobeta/android/dslv/e;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 14
    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/mobeta/android/dslv/e;->mFloatBGColor:I

    return-void
.end method
