.class public final synthetic Lcom/google/firebase/analytics/connector/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic zza:Lcom/google/firebase/analytics/connector/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/analytics/connector/c;

    invoke-direct {v0}, Lcom/google/firebase/analytics/connector/c;-><init>()V

    sput-object v0, Lcom/google/firebase/analytics/connector/c;->zza:Lcom/google/firebase/analytics/connector/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
