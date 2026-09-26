.class public final synthetic Lcom/narvii/community/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/community/CommunityHelper;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/community/CommunityHelper;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/d;->a:Lcom/narvii/community/CommunityHelper;

    iput-object p2, p0, Lcom/narvii/community/d;->b:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/community/d;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/community/d;->a:Lcom/narvii/community/CommunityHelper;

    iget-object v1, p0, Lcom/narvii/community/d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/community/d;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/community/CommunityHelper;->a(Lcom/narvii/community/CommunityHelper;Ljava/lang/String;ILandroid/view/View;)V

    return-void
.end method
