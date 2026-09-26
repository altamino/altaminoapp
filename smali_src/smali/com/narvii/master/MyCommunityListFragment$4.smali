.class Lcom/narvii/master/MyCommunityListFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MyCommunityListFragment;->createShortcut(Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/MyCommunityListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$4;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 0

    .line 2
    invoke-static {p1}, Landroidx/core/content/pm/e;->a(Landroid/content/pm/ShortcutInfo;)I

    move-result p1

    invoke-static {p2}, Landroidx/core/content/pm/e;->a(Landroid/content/pm/ShortcutInfo;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/narvii/community/k;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/narvii/community/k;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/MyCommunityListFragment$4;->compare(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I

    move-result p1

    return p1
.end method
