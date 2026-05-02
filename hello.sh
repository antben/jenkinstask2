cat > hello.sh << 'EOF'
#!/bin/bash
echo "Build triggered at: $(date)"
echo "Running on host: $(hostname)"
echo "Branch: $GIT_BRANCH"
echo "Commit: $GIT_COMMIT"
EOF
chmod +x hello.sh