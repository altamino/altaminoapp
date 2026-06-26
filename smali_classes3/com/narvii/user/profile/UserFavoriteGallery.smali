.class public Lcom/narvii/user/profile/UserFavoriteGallery;
.super Lcom/narvii/widget/Gallery;
.source "UserFavoriteGallery.java"

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

    .line 25
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "gallery.add"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->ADD:Lcom/narvii/util/Tag;

    .line 26
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "gallery.goto"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->GOTO:Lcom/narvii/util/Tag;

    .line 27
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "gallery.PADDING"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->PADDING:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0, p0}, Lcom/narvii/widget/AdapterView;->setOnItemClickListener(Lcom/narvii/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/user/profile/UserFavoriteGallery;)Ljava/util/ArrayList;
    .locals 0

    .line 22
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

    .line 173
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->listener:Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->adapter:Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;

    invoke-virtual {p1, p3}, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 175
    iget-object p2, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->listener:Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;

    invoke-interface {p2, p1, p3}, Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;->onItemClick(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->darkTheme:Z

    .line 40
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->adapter:Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setItems(Ljava/util/List;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;ZZ)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    iget-object v0, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    sget-object v1, Lcom/narvii/user/profile/UserFavoriteGallery;->PADDING:Lcom/narvii/util/Tag;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p2, :cond_0

    .line 57
    iget-object p2, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    sget-object v1, Lcom/narvii/user/profile/UserFavoriteGallery;->ADD:Lcom/narvii/util/Tag;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lez v0, :cond_1

    .line 60
    iget-object p2, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 63
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    sget-object p2, Lcom/narvii/user/profile/UserFavoriteGallery;->GOTO:Lcom/narvii/util/Tag;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->list:Ljava/util/ArrayList;

    sget-object p2, Lcom/narvii/user/profile/UserFavoriteGallery;->PADDING:Lcom/narvii/util/Tag;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->adapter:Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;

    if-nez p1, :cond_3

    .line 69
    new-instance p1, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;-><init>(Lcom/narvii/user/profile/UserFavoriteGallery;Lcom/narvii/user/profile/UserFavoriteGallery$1;)V

    iput-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->adapter:Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;

    .line 70
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->adapter:Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery;->listener:Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;

    return-void
.end method
