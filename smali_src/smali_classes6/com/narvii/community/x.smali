.class public final synthetic Lcom/narvii/community/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/model/Community;

.field public final synthetic b:Lcom/narvii/util/PackageUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/model/Community;Lcom/narvii/util/PackageUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/x;->a:Lcom/narvii/model/Community;

    iput-object p2, p0, Lcom/narvii/community/x;->b:Lcom/narvii/util/PackageUtils;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/community/x;->a:Lcom/narvii/model/Community;

    iget-object v1, p0, Lcom/narvii/community/x;->b:Lcom/narvii/util/PackageUtils;

    invoke-static {v0, v1, p1}, Lcom/narvii/community/MyCommunityHelper;->e(Lcom/narvii/model/Community;Lcom/narvii/util/PackageUtils;Landroid/view/View;)V

    return-void
.end method
