package com.narvii.video;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.MimeTypes;
import androidx.webkit.internal.AssetHelper;
import com.narvii.util.http.ApiRequest;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.http.entity.mime.MIME;
import org.jsoup.helper.HttpConnection;

/* JADX INFO: loaded from: classes6.dex */
public class EmbedHttpServer implements Runnable {
    private final AtomicReference<Socket> latestSocket;
    private int port;
    private ServerSocket serverSocket;

    private static class BodyInputStream extends InputStream {
        private InputStream ins;
        private int n;

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.n;
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.n <= 0) {
                return -1;
            }
            int i10 = this.ins.read();
            if (i10 != -1) {
                this.n--;
            }
            return i10;
        }

        @Override // java.io.InputStream
        public synchronized void reset() throws IOException {
            throw new IOException("unsupported");
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.ins.close();
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = this.n;
            if (i12 <= 0) {
                return -1;
            }
            InputStream inputStream = this.ins;
            if (i11 >= i12) {
                i11 = i12;
            }
            int i13 = inputStream.read(bArr, i10, i11);
            if (i13 != -1) {
                this.n -= i13;
            }
            return i13;
        }

        @Override // java.io.InputStream
        public long skip(long j6) throws IOException {
            throw new IOException("unsupported");
        }

        public BodyInputStream(InputStream inputStream, int i10) {
            this.ins = inputStream;
            this.n = i10;
        }
    }

    public static class ResponseOutputStream extends OutputStream {
        private static final byte[] CRLF = {com.google.common.base.c.CR, 10};
        private int lv;
        private OutputStream os;

        @Override // java.io.OutputStream
        public void write(int i10) throws IOException {
            if (this.lv < 1) {
                setStatusCode(200);
            }
            if (this.lv < 2) {
                this.os.write(CRLF);
                this.lv = 2;
            }
            this.os.write(i10);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.lv < 1) {
                setStatusCode(404);
            }
            if (this.lv < 2) {
                this.os.write(CRLF);
                this.lv = 2;
            }
            if (this.lv < 3) {
                this.os.close();
                this.lv = 3;
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.os.flush();
        }

        public void setContentEncoding(String str) throws IOException {
            setHeader(HttpConnection.CONTENT_ENCODING, str);
        }

        public void setContentLength(int i10) throws IOException {
            setHeader("Content-Length", String.valueOf(i10));
        }

        public void setContentType(String str) throws IOException {
            setHeader(MIME.CONTENT_TYPE, str);
        }

        public void setContentTypeBinary() throws IOException {
            setContentType(ApiRequest.CONTENT_TYPE_BINARY);
        }

        public void setContentTypeJpeg() throws IOException {
            setContentType("image/jpeg");
        }

        public void setContentTypeJson() throws IOException {
            setContentType("application/json");
        }

        public void setContentTypePng() throws IOException {
            setContentType(MimeTypes.IMAGE_PNG);
        }

        public void setContentTypeZip() throws IOException {
            setContentType("application/zip");
        }

        public void setHeader(String str, String str2) throws IOException {
            if (this.lv < 1) {
                setStatusCode(200);
            }
            if (this.lv != 1) {
                throw new IOException("headers is already set");
            }
            this.os.write(str.getBytes("ASCII"));
            this.os.write(58);
            this.os.write(32);
            this.os.write(str2.getBytes("ASCII"));
            this.os.write(CRLF);
        }

        public void setStatusCode(int i10) throws IOException {
            if (i10 == 206) {
                setStatusLine("206 Partial Content");
            }
            if (i10 == 301) {
                setStatusLine("301 Moved Permanently");
                return;
            }
            if (i10 == 304) {
                setStatusLine("304 Not Modified");
                return;
            }
            if (i10 == 400) {
                setStatusLine("400 Bad Request");
                return;
            }
            if (i10 == 401) {
                setStatusLine("401 Unauthorized");
                return;
            }
            if (i10 == 500) {
                setStatusLine("500 Internal Server Error");
                return;
            }
            if (i10 == 501) {
                setStatusLine("501 Not Implemented");
                return;
            }
            switch (i10) {
                case 200:
                    setStatusLine("200 OK");
                    break;
                case 201:
                    setStatusLine("201 Created");
                    break;
                case 202:
                    setStatusLine("202 Accepted");
                    break;
                default:
                    switch (i10) {
                        case TypedValues.CycleType.TYPE_ALPHA /* 403 */:
                            setStatusLine("403 Forbidden");
                            break;
                        case 404:
                            setStatusLine("404 Not Found");
                            break;
                        case 405:
                            setStatusLine("405 Method Not Allowed");
                            break;
                        default:
                            setStatusLine(String.valueOf(i10));
                            break;
                    }
                    break;
            }
        }

        public void setStatusLine(String str) throws IOException {
            if (this.lv != 0) {
                throw new IOException("status line is already set");
            }
            this.os.write("HTTP/1.1 ".getBytes("ASCII"));
            this.os.write(str.getBytes("ASCII"));
            this.os.write(CRLF);
            this.lv = 1;
        }

        public ResponseOutputStream(OutputStream outputStream) {
            this.os = outputStream;
        }

        public void setContentTypeHtml() throws IOException {
            setContentType("text/html");
        }

        public void setContentTypeHtmlUtf8() throws IOException {
            setContentType("text/html; charset=utf-8");
        }

        public void setContentTypeText() throws IOException {
            setContentType(AssetHelper.DEFAULT_MIME_TYPE);
        }

        public void setContentTypeTextUtf8() throws IOException {
            setContentType(ApiRequest.CONTENT_TYPE_TEXT);
        }

        public void setContentTypeXml() throws IOException {
            setContentType("text/xml");
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            if (this.lv < 1) {
                setStatusCode(200);
            }
            if (this.lv < 2) {
                this.os.write(CRLF);
                this.lv = 2;
            }
            this.os.write(bArr, i10, i11);
        }
    }

    private class Worker implements Runnable {
        final Socket conn;

        @Override // java.lang.Runnable
        public void run() {
            try {
                HashMap<String, String> map = new HashMap<>();
                InputStream inputStream = this.conn.getInputStream();
                StringBuilder sb = new StringBuilder(512);
                String str = null;
                String strTrim = null;
                while (true) {
                    int i10 = inputStream.read();
                    if (i10 == -1) {
                        break;
                    }
                    if (i10 == 10) {
                        if (sb.length() > 0 && sb.charAt(sb.length() - 1) == '\r') {
                            sb.setLength(sb.length() - 1);
                        }
                        if (sb.length() == 0) {
                            break;
                        }
                        if (str == null) {
                            int iIndexOf = sb.indexOf(" ");
                            String strSubstring = sb.substring(0, iIndexOf);
                            strTrim = sb.substring(iIndexOf + 1, sb.lastIndexOf(" HTTP/")).trim();
                            str = strSubstring;
                        } else {
                            int iIndexOf2 = sb.indexOf(":");
                            map.put(sb.substring(0, iIndexOf2).trim(), sb.substring(iIndexOf2 + 1).trim());
                        }
                        sb.setLength(0);
                    } else {
                        sb.append((char) i10);
                    }
                }
                String str2 = map.get("Content-Length");
                int i11 = str2 != null ? Integer.parseInt(str2) : 0;
                OutputStream outputStream = this.conn.getOutputStream();
                if ("100-Continue".equalsIgnoreCase(map.get("Expect"))) {
                    outputStream.write("HTTP/1.1 100 Continue\r\n\r\n".getBytes("ASCII"));
                    outputStream.flush();
                }
                BodyInputStream bodyInputStream = new BodyInputStream(inputStream, i11);
                ResponseOutputStream responseOutputStream = new ResponseOutputStream(outputStream);
                EmbedHttpServer.this.handle(str, strTrim, map, bodyInputStream, responseOutputStream);
                responseOutputStream.close();
            } catch (Exception unused) {
            } finally {
                Socket socket = this.conn;
                if (socket != null) {
                    try {
                        socket.close();
                    } catch (Exception unused2) {
                    }
                }
                androidx.compose.animation.core.d.a(EmbedHttpServer.this.latestSocket, this.conn, null);
            }
        }

        public Worker(Socket socket) {
            this.conn = socket;
        }
    }

    public EmbedHttpServer(int i10) {
        this.latestSocket = new AtomicReference<>();
        this.port = i10;
    }

    protected void handle(String str, String str2, HashMap<String, String> map, InputStream inputStream, ResponseOutputStream responseOutputStream) throws Exception {
    }

    public int getPort() {
        int i10 = this.port;
        if (i10 != 0) {
            return i10;
        }
        ServerSocket serverSocket = this.serverSocket;
        if (serverSocket == null) {
            return 0;
        }
        return serverSocket.getLocalPort();
    }

    public boolean isStarted() {
        ServerSocket serverSocket = this.serverSocket;
        return (serverSocket == null || !serverSocket.isBound() || serverSocket.isClosed()) ? false : true;
    }

    @Override // java.lang.Runnable
    public void run() {
        ServerSocket serverSocket = this.serverSocket;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 2, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
        while (serverSocket == this.serverSocket) {
            try {
                Socket socketAccept = serverSocket.accept();
                Socket socket = this.latestSocket.get();
                this.latestSocket.set(socketAccept);
                threadPoolExecutor.execute(new Worker(socketAccept));
                if (socket != null) {
                    socket.close();
                }
            } catch (IOException unused) {
            }
            if (!serverSocket.isBound() || serverSocket.isClosed()) {
                this.serverSocket = null;
            }
        }
        try {
            threadPoolExecutor.awaitTermination(15000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused2) {
        }
    }

    public void stop() throws IOException {
        ServerSocket serverSocket = this.serverSocket;
        if (serverSocket != null) {
            serverSocket.close();
            this.serverSocket = null;
        }
    }

    public EmbedHttpServer() {
        this(0);
    }

    public void start() throws IOException {
        if (!isStarted()) {
            this.serverSocket = new ServerSocket(this.port);
            new Thread(this, "embed-http-server").start();
        }
    }
}
