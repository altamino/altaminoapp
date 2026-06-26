.class public final synthetic Lcom/narvii/account/-$$Lambda$AccountService$AbhuuljI8LVh9E4HVfVheuUaQow;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/narvii/account/-$$Lambda$AccountService$AbhuuljI8LVh9E4HVfVheuUaQow;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/account/-$$Lambda$AccountService$AbhuuljI8LVh9E4HVfVheuUaQow;

    invoke-direct {v0}, Lcom/narvii/account/-$$Lambda$AccountService$AbhuuljI8LVh9E4HVfVheuUaQow;-><init>()V

    sput-object v0, Lcom/narvii/account/-$$Lambda$AccountService$AbhuuljI8LVh9E4HVfVheuUaQow;->INSTANCE:Lcom/narvii/account/-$$Lambda$AccountService$AbhuuljI8LVh9E4HVfVheuUaQow;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/narvii/account/AccountService$RecentVisitorListener;

    invoke-static {p1}, Lcom/narvii/account/AccountService;->lambda$markRecentVisitorAsRead$2(Lcom/narvii/account/AccountService$RecentVisitorListener;)V

    return-void
.end method
