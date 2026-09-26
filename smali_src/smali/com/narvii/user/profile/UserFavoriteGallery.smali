.class public Lcom/narvii/user/profile/UserFavoriteGallery;
.super Lcom/narvii/widget/Gallery;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;,
        Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final ADD:Lcom/narvii/util/Tag;

.field public static final GOTO:Lcom/narvii/util/Tag;

.field public static final PADDING:Lcom/narvii/util/Tag;


# instance fields
.field private adapter:Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;

.field darkTheme:Z

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "gallery.add"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->ADD:Lcom/narvii/util/Tag;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/util/Tag;

    .line 12
    .line 13
    const-string v1, "gallery.goto"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->GOTO:Lcom/narvii/util/Tag;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/util/Tag;

    .line 21
    .line 22
    const-string v1, "gallery.PADDING"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->PADDING:Lcom/narvii/util/Tag;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p0}, Lcom/narvii/widget/AdapterView;->setOnItemClickListener(Lcom/narvii/widget/AdapterView$OnItemClickListener;)V

    .line 14
    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/user/profile/UserFavoriteGallery;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public onItemClick(Lcom/narvii/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->listener:Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->adapter:Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p3}, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->getItem(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->listener:Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, p1, p3}, Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;->onItemClick(Ljava/lang/Object;I)V

    .line 16
    :cond_0
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->darkTheme:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->adapter:Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    :cond_0
    return-void
.end method

.method public setItems(Ljava/util/List;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    .line 8
    .line 9
    sget-object v1, Lcom/narvii/user/profile/UserFavoriteGallery;->PADDING:Lcom/narvii/util/Tag;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    .line 23
    .line 24
    sget-object v2, Lcom/narvii/user/profile/UserFavoriteGallery;->ADD:Lcom/narvii/util/Tag;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    :cond_0
    if-lez v0, :cond_1

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    :cond_1
    if-eqz p3, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    .line 39
    .line 40
    sget-object p2, Lcom/narvii/user/profile/UserFavoriteGallery;->GOTO:Lcom/narvii/util/Tag;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->adapter:Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    new-instance p1, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;

    .line 55
    const/4 p2, 0x0

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p0, p2}, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;-><init>(Lcom/narvii/user/profile/UserFavoriteGallery;Lcom/narvii/user/profile/b;)V

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->adapter:Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 68
    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->listener:Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;

    return-void
.end method
