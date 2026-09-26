.class public final synthetic Lcom/narvii/community/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Lcom/narvii/model/Community;

.field public final synthetic c:Lcom/narvii/community/MyCommunityHelper;


# direct methods
.method public synthetic constructor <init>([ILcom/narvii/model/Community;Lcom/narvii/community/MyCommunityHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/u;->a:[I

    iput-object p2, p0, Lcom/narvii/community/u;->b:Lcom/narvii/model/Community;

    iput-object p3, p0, Lcom/narvii/community/u;->c:Lcom/narvii/community/MyCommunityHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/community/u;->a:[I

    iget-object v1, p0, Lcom/narvii/community/u;->b:Lcom/narvii/model/Community;

    iget-object v2, p0, Lcom/narvii/community/u;->c:Lcom/narvii/community/MyCommunityHelper;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/narvii/community/MyCommunityHelper;->c([ILcom/narvii/model/Community;Lcom/narvii/community/MyCommunityHelper;Landroid/content/DialogInterface;I)V

    return-void
.end method
