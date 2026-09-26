.class public final Lcom/bumptech/glide/disklrucache/b$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field private final files:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/bumptech/glide/disklrucache/b;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/b;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/b$e;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/disklrucache/b$e;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bumptech/glide/disklrucache/b$e;->sequenceNumber:J

    iput-object p5, p0, Lcom/bumptech/glide/disklrucache/b$e;->files:[Ljava/io/File;

    iput-object p6, p0, Lcom/bumptech/glide/disklrucache/b$e;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/b;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/disklrucache/b$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/bumptech/glide/disklrucache/b$e;-><init>(Lcom/bumptech/glide/disklrucache/b;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/b$e;->files:[Ljava/io/File;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method
