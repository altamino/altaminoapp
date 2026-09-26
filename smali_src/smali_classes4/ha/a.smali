.class public Lha/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_INSTANCE:Lha/a;


# instance fields
.field private name:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lha/a;

    .line 3
    .line 4
    const-string v1, "https://framatube.org"

    .line 5
    .line 6
    const-string v2, "FramaTube"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lha/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    sput-object v0, Lha/a;->DEFAULT_INSTANCE:Lha/a;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/a;->url:Ljava/lang/String;

    const-string p1, "PeerTube"

    iput-object p1, p0, Lha/a;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/a;->url:Ljava/lang/String;

    iput-object p2, p0, Lha/a;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lha/a;->url:Ljava/lang/String;

    return-object v0
.end method
