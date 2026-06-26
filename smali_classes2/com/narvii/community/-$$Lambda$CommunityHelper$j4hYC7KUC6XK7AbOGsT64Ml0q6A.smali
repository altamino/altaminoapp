.class public final synthetic Lcom/narvii/community/-$$Lambda$CommunityHelper$j4hYC7KUC6XK7AbOGsT64Ml0q6A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/community/CommunityHelper;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/community/CommunityHelper;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/-$$Lambda$CommunityHelper$j4hYC7KUC6XK7AbOGsT64Ml0q6A;->f$0:Lcom/narvii/community/CommunityHelper;

    iput-object p2, p0, Lcom/narvii/community/-$$Lambda$CommunityHelper$j4hYC7KUC6XK7AbOGsT64Ml0q6A;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/community/-$$Lambda$CommunityHelper$j4hYC7KUC6XK7AbOGsT64Ml0q6A;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/community/-$$Lambda$CommunityHelper$j4hYC7KUC6XK7AbOGsT64Ml0q6A;->f$0:Lcom/narvii/community/CommunityHelper;

    iget-object v1, p0, Lcom/narvii/community/-$$Lambda$CommunityHelper$j4hYC7KUC6XK7AbOGsT64Ml0q6A;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/community/-$$Lambda$CommunityHelper$j4hYC7KUC6XK7AbOGsT64Ml0q6A;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/community/CommunityHelper;->lambda$checkCommunityJoined$1$CommunityHelper(Ljava/lang/String;ILandroid/view/View;)V

    return-void
.end method
