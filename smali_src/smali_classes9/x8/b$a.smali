.class public final Lx8/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final DH_DEFAULT_PARAMS:Lx8/b$a;

.field public static final DSA_DEFAULT_PARAMS:Lx8/b$a;

.field public static final EC_IMPLICITLY_CA:Lx8/b$a;


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lx8/b$a;

    const-string v1, "ecImplicitlyCA"

    const-class v2, Lorg/bouncycastle/asn1/x9/b;

    invoke-direct {v0, v1, v2}, Lx8/b$a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lx8/b$a;->EC_IMPLICITLY_CA:Lx8/b$a;

    new-instance v0, Lx8/b$a;

    const-string v1, "dhDefaultParams"

    const-class v2, Lorg/bouncycastle/crypto/params/b;

    invoke-direct {v0, v1, v2}, Lx8/b$a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lx8/b$a;->DH_DEFAULT_PARAMS:Lx8/b$a;

    new-instance v0, Lx8/b$a;

    const-string v1, "dsaDefaultParams"

    const-class v2, Lorg/bouncycastle/crypto/params/d;

    invoke-direct {v0, v1, v2}, Lx8/b$a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lx8/b$a;->DSA_DEFAULT_PARAMS:Lx8/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx8/b$a;->name:Ljava/lang/String;

    iput-object p2, p0, Lx8/b$a;->type:Ljava/lang/Class;

    return-void
.end method

.method static synthetic a(Lx8/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lx8/b$a;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lx8/b$a;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lx8/b$a;->type:Ljava/lang/Class;

    return-object p0
.end method
