.class final Landroidx/viewpager/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/viewpager/widget/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroidx/viewpager/widget/ViewPager$ItemInfo;Landroidx/viewpager/widget/ViewPager$ItemInfo;)I
    .locals 0

    .line 1
    .line 2
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 3
    .line 4
    iget p2, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 5
    sub-int/2addr p1, p2

    .line 6
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 3
    .line 4
    check-cast p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$1;->a(Landroidx/viewpager/widget/ViewPager$ItemInfo;Landroidx/viewpager/widget/ViewPager$ItemInfo;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
