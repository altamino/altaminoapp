.class public final synthetic Lcom/narvii/community/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

.field public final synthetic b:Lcom/narvii/community/MyCommunityHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;Lcom/narvii/community/MyCommunityHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/y;->a:Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    iput-object p2, p0, Lcom/narvii/community/y;->b:Lcom/narvii/community/MyCommunityHelper;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/community/y;->a:Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    iget-object v1, p0, Lcom/narvii/community/y;->b:Lcom/narvii/community/MyCommunityHelper;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->k(Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;Lcom/narvii/community/MyCommunityHelper;Ljava/lang/Boolean;)V

    return-void
.end method
